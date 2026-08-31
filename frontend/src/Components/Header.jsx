import { Link, NavLink } from 'react-router-dom';
import styles from './Header.module.css';

export default function Header() {
  return (
    <header className={styles.header}>
      <Link to="/" className={styles.logo}>
        <span className={styles.logoIcon}>🌍</span>
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
      </nav>
    </header>
  );
}