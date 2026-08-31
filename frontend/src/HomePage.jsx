import { Link } from 'react-router-dom';
import GlobeIllustration from './Components/GlobeIllustration';
import styles from './HomePage.module.css';

export default function HomePage() {
  return (
    <main className={styles.main}>
      <div className={styles.globe}>
        <GlobeIllustration />
      </div>

      <h1 className={styles.title}>
        what is dish<span className={styles.titleAccent}>?!</span>
      </h1>

      <p className={styles.subtitle}>
        Ett snabbt och lekfullt sätt att upptäcka världens
        <br />
        kök, ett land i taget.
      </p>

      <div className={styles.actions}>
        <Link to="/quiz" className={styles.btnPrimary}>
          Starta quiz
        </Link>
        <Link to="/blogg" className={styles.btnOutline}>
          Läs bloggen
        </Link>
      </div>

      <div className={styles.stats}>
        <span className={styles.stat}>40 länder</span>
        <span className={styles.statDivider} />
        <span className={`${styles.stat} ${styles.statOrange}`}>3 nivåer</span>
        <span className={styles.statDivider} />
        <span className={`${styles.stat} ${styles.statGreen}`}>Poängsystem</span>
      </div>
    </main>
  );
}
