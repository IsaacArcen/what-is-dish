import { Link } from "react-router-dom";
import DailyRecipeCard from "../Components/DailyRecipeCard";
import heroImage from "../assets/hero-dish.png";
import styles from "./HomePage.module.css";

export default function HomePage() {
  return (
    <div className={styles.pageWrap}>
      <div className={styles.heroCard}>
        <img
          src={heroImage}
          alt="Jordglob med mat från olika länder"
          className={styles.heroImage}
        />

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
          <span className={styles.stat}>106 länder</span>
          <span className={styles.statDivider} />
          <span className={`${styles.stat} ${styles.statOrange}`}>
            3 nivåer
          </span>
          <span className={styles.statDivider} />
          <span className={`${styles.stat} ${styles.statGreen}`}>
            Poängsystem
          </span>
        </div>
      </div>

      <div className={styles.recipeSlot}>
        <DailyRecipeCard />
      </div>
    </div>
  );
}
