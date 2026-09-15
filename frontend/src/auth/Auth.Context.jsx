import { createContext, useCallback, useContext, useEffect, useMemo, useState } from 'react';

const STORAGE_TOKEN_KEY = 'dish.auth.token';
const STORAGE_USER_KEY = 'dish.auth.user';

const AuthContext = createContext(null);

function saveAuthState(token, user) {
  if (token) localStorage.setItem(STORAGE_TOKEN_KEY, token);
  if (user) localStorage.setItem(STORAGE_USER_KEY, JSON.stringify(user));
}

function clearAuthState() {
  localStorage.removeItem(STORAGE_TOKEN_KEY);
  localStorage.removeItem(STORAGE_USER_KEY);
}

function loadInitialUser() {
  const raw = localStorage.getItem(STORAGE_USER_KEY);
  if (!raw) return null;

  try {
    return JSON.parse(raw);
  } catch {
    localStorage.removeItem(STORAGE_USER_KEY);
    return null;
  }
}

async function parseApiResponse(res) {
  let data = null;
  try {
    data = await res.json();
  } catch {
    data = null;
  }

  if (!res.ok) {
    const errorMessage = data?.error || 'Request failed';
    throw new Error(errorMessage);
  }

  return data;
}

export function AuthProvider({ children }) {
  const [token, setToken] = useState(() => localStorage.getItem(STORAGE_TOKEN_KEY));
  const [user, setUser] = useState(() => loadInitialUser());
  const [isBooting, setIsBooting] = useState(() => Boolean(localStorage.getItem(STORAGE_TOKEN_KEY)));

  const setAuth = useCallback((nextToken, nextUser) => {
    setToken(nextToken);
    setUser(nextUser);

    if (nextToken && nextUser) {
      saveAuthState(nextToken, nextUser);
    } else {
      clearAuthState();
    }
  }, []);

  const refreshProfile = useCallback(async (overrideToken = null) => {
    const bearer = overrideToken || token;
    if (!bearer) {
      setAuth(null, null);
      return null;
    }

    const res = await fetch('/api/auth/me', {
      headers: { Authorization: `Bearer ${bearer}` },
    });

    const data = await parseApiResponse(res);
    setAuth(bearer, data.user);
    return data.user;
  }, [setAuth, token]);

  useEffect(() => {
    if (!token) {
      setIsBooting(false);
      return;
    }

    refreshProfile(token)
      .catch(() => {
        setAuth(null, null);
      })
      .finally(() => {
        setIsBooting(false);
      });
  }, [refreshProfile, setAuth, token]);

  const register = useCallback(async ({ name, email, password }) => {
    const res = await fetch('/api/auth/register', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ name, email, password }),
    });

    const data = await parseApiResponse(res);
    setAuth(data.token, data.user);
    return data.user;
  }, [setAuth]);

  const login = useCallback(async ({ email, password }) => {
    const res = await fetch('/api/auth/login', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ email, password }),
    });

    const data = await parseApiResponse(res);
    setAuth(data.token, data.user);
    return data.user;
  }, [setAuth]);

  const updateAccount = useCallback(async ({ name, email }) => {
    if (!token) throw new Error('You are not logged in');

    const res = await fetch('/api/auth/me', {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({ name, email }),
    });

    const data = await parseApiResponse(res);
    setAuth(token, data.user);
    return data.user;
  }, [setAuth, token]);

  const changePassword = useCallback(async ({ currentPassword, newPassword }) => {
    if (!token) throw new Error('You are not logged in');

    const res = await fetch('/api/auth/me/password', {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({
        current_password: currentPassword,
        new_password: newPassword,
      }),
    });

    await parseApiResponse(res);
  }, [token]);

  const deleteAccount = useCallback(async ({ password }) => {
    if (!token) throw new Error('You are not logged in');

    const res = await fetch('/api/auth/me', {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`,
      },
      body: JSON.stringify({ password }),
    });

    await parseApiResponse(res);
    setAuth(null, null);
  }, [setAuth, token]);

  const logout = useCallback(async () => {
    const currentToken = token;
    setAuth(null, null);

    if (!currentToken) return;

    try {
      await fetch('/api/auth/logout', {
        method: 'POST',
        headers: { Authorization: `Bearer ${currentToken}` },
      });
    } catch {
      // Ignore network errors during logout because local auth state is already cleared.
    }
  }, [setAuth, token]);

  const value = useMemo(() => ({
    token,
    user,
    isBooting,
    isAuthenticated: Boolean(token && user),
    register,
    login,
    updateAccount,
    changePassword,
    deleteAccount,
    logout,
    refreshProfile,
  }), [changePassword, deleteAccount, isBooting, login, logout, refreshProfile, register, token, updateAccount, user]);

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error('useAuth must be used inside AuthProvider');
  }
  return context;
}
