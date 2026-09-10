import { useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useAuth } from '../auth/Auth.Context';
import styles from './AuthPage.module.css';

export default function AuthPage() {
  const navigate = useNavigate();
  const { isAuthenticated, isBooting, login, register } = useAuth();

  const [mode, setMode] = useState('login');
  const [form, setForm] = useState({ name: '', email: '', password: '' });
  const [error, setError] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);

  useEffect(() => {
    if (!isBooting && isAuthenticated) {
      navigate('/profile', { replace: true });
    }
  }, [isAuthenticated, isBooting, navigate]);

  function updateField(field, value) {
    setForm(prev => ({ ...prev, [field]: value }));
  }

  async function onSubmit(e) {
    e.preventDefault();
    setError('');
    setIsSubmitting(true);

    try {
      if (mode === 'register') {
        await register({
          name: form.name,
          email: form.email,
          password: form.password,
        });
      } else {
        await login({
          email: form.email,
          password: form.password,
        });
      }

      navigate('/profile', { replace: true });
    } catch (err) {
      setError(err.message || 'Nagot gick fel, forsok igen.');
    } finally {
      setIsSubmitting(false);
    }
  }

  if (isBooting) {
    return (
      <main className={styles.main}>
        <div className={styles.card}>
          <h1 className={styles.title}>Laddar...</h1>
        </div>
      </main>
    );
  }

  return (
    <main className={styles.main}>
      <section className={styles.card}>
        <div className={styles.modeSwitch}>
          <button
            className={mode === 'login' ? `${styles.switchBtn} ${styles.active}` : styles.switchBtn}
            onClick={() => setMode('login')}
            type="button"
          >
            Logga in
          </button>
          <button
            className={mode === 'register' ? `${styles.switchBtn} ${styles.active}` : styles.switchBtn}
            onClick={() => setMode('register')}
            type="button"
          >
            Registrera
          </button>
        </div>

        <h1 className={styles.title}>{mode === 'register' ? 'Skapa konto' : 'älkommen tillbaka'}</h1>
        <p className={styles.subtitle}>
          {mode === 'register'
            ? 'Skapa ett konto for att spara din profil och komma igang.'
            : 'Logga in for att se din profil.'}
        </p>

        <form className={styles.form} onSubmit={onSubmit}>
          {mode === 'register' && (
            <label className={styles.label}>
              Namn
              <input
                className={styles.input}
                type="text"
                value={form.name}
                onChange={e => updateField('name', e.target.value)}
                minLength={2}
                required
              />
            </label>
          )}

          <label className={styles.label}>
            E-post
            <input
              className={styles.input}
              type="email"
              value={form.email}
              onChange={e => updateField('email', e.target.value)}
              required
            />
          </label>

          <label className={styles.label}>
            Losenord
            <input
              className={styles.input}
              type="password"
              value={form.password}
              onChange={e => updateField('password', e.target.value)}
              minLength={6}
              required
            />
          </label>

          {error && <p className={styles.error}>{error}</p>}

          <button className={styles.submitBtn} type="submit" disabled={isSubmitting}>
            {isSubmitting
              ? 'Väntar...'
              : mode === 'register'
              ? 'Skapa konto'
              : 'Logga in'}
          </button>
        </form>

        <p className={styles.helperText}>
          Du kan alltid ga tillbaka till <Link to="/">startsidan</Link>.
        </p>
      </section>
    </main>
  );
}
