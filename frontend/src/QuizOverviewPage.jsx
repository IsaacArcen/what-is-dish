import { useLocation, useNavigate } from "react-router-dom";
import styles from "./QuizOverviewPage.module.css";

export default function QuizOverviewPage() {
  const location = useLocation();
  const navigate = useNavigate();

  const summary = location.state?.summary;

  if (!summary) {
    return (
      <main className={styles.main}>
        <section className={styles.emptyBox}>
          <h1>Inget resultat hittades</h1>
          <p>Starta ett nytt quiz för att se en översikt.</p>
          <button onClick={() => navigate("/quiz")}>Starta nytt quiz</button>
        </section>
      </main>
    );
  }

  return (
    <main className={styles.main}>
      <section className={styles.headerSection}>
        <h1>Quizöversikt</h1>
        <p>
          Du fick <strong>{summary.totalScore}</strong> poäng av{" "}
          <strong>{summary.questions.length * 4}</strong> möjliga.
        </p>
      </section>

      <section className={styles.resultsList}>
        {summary.questions.map((question, index) => {
          const isCorrect =
            question.guessedDishId === question.correctDishId;

          return (
            <article key={question.countryId} className={styles.resultCard}>
              <div className={styles.cardTop}>
                <span>Fråga {index + 1}</span>
                <span>{question.points} poäng</span>
              </div>

              <div className={styles.countryRow}>
                <img
                  src={question.flagUrl}
                  alt={`Flaggan för ${question.countryName}`}
                  className={styles.flag}
                />
                <h2>{question.countryName}</h2>
              </div>

              <div className={styles.answerGrid}>
                <div>
                    <p className={styles.label}>Felgissningar</p>
                    <p className={styles.wrong}>
                      {question.wrongGuessNames.length > 0
                        ? question.wrongGuessNames.join(", ")
                        : "Inga felgissningar"}
                    </p>
                  </div>

                  <div>
                    <p className={styles.label}>Ditt slutliga svar</p>
                    <p className={isCorrect ? styles.correct : styles.wrong}>
                      {question.guessedDishName}
                    </p>
                  </div>

                  <div>
                    <p className={styles.label}>Rätt svar</p>
                    <p className={styles.correct}>{question.correctDishName}</p>
                  </div>
              </div>
            </article>
          );
        })}
      </section>

      <button
        className={styles.restartButton}
        onClick={() => navigate("/quiz")}
      >
        Starta nytt quiz
      </button>
    </main>
  );
}