import { Link, NavLink } from "react-router-dom";
import { useAuth } from "../auth/Auth.Context";
import logoImage from "../assets/hero-dish.png";
import styles from "./Header.module.css";

export default function Header() {
  const { isAuthenticated, user, logout } = useAuth();

  return (
    <div className={styles.headerWrap}>
      <header className={styles.header}>
        <Link to="/" className={styles.logo}>
          <img src={logoImage} alt="" className={styles.logoIcon} />
          <span className={styles.logoText}>
            what is dish<span className={styles.logoAccent}>?!</span>
          </span>
        </Link>
        <nav className={styles.nav}>
          <NavLink
            to="/"
            end
            className={({ isActive }) =>
              isActive ? `${styles.navLink} ${styles.active}` : styles.navLink
            }
          >
            Startsida
          </NavLink>
          <NavLink
            to="/quiz"
            className={({ isActive }) =>
              isActive ? `${styles.navLink} ${styles.active}` : styles.navLink
            }
          >
            Quiz
          </NavLink>
          <NavLink
            to="/blogg"
            className={({ isActive }) =>
              isActive ? `${styles.navLink} ${styles.active}` : styles.navLink
            }
          >
            Blogg
          </NavLink>

          <NavLink
            to="/profile"
            className={({ isActive }) =>
              isActive ? `${styles.navLink} ${styles.active}` : styles.navLink
            }
          >
            Profil
          </NavLink>

          {isAuthenticated ? (
            <>
              <span className={styles.userBadge}>{user?.name}</span>
              <button
                type="button"
                className={styles.logoutBtn}
                onClick={logout}
              >
                Logga ut
              </button>
            </>
          ) : (
            <NavLink
              to="/auth"
              className={({ isActive }) =>
                isActive ? `${styles.navLink} ${styles.active}` : styles.navLink
              }
            >
              Logga in
            </NavLink>
          )}
        </nav>
      </header>
    </div>
  );
}
