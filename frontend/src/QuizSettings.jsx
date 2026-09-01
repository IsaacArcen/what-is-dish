import { useState } from "react";
import { useNavigate } from "react-router-dom";
import styles from "./QuizSettings.module.css";

const QUESTION_COUNTS = [5, 10, 20];
const REGIONS = [
  { label: "Alla regioner", value: "all" },
  { label: "Europa", value: "Europe" },
  { label: "Asien", value: "Asia" },
  { label: "Nord- och mellanamerika", value: "North America" },
  { label: "Sydamerika", value: "South America" },
  { label: "Afrika", value: "Africa" },
  { label: "Oceanien", value: "Oceania" },
];

export default function QuizSettings() {
  const [questionCount, setQuestionCount] = useState(5);
  const [region, setRegion] = useState("all");
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);
  const navigate = useNavigate();

  const handleStart = async () => {
    setLoading(true);
    setError(null);
    try {
      const res = await fetch(
        `http://localhost:5097/api/quiz?continent=${region}&limit=${questionCount}`,
      );
      if (!res.ok) throw new Error("Kunde inte hämta quizfrågor");
      const questions = await res.json();
      navigate("/quiz/spela", { state: { questions } });
    } catch (err) {
      setError("Något gick fel, försök igen.");
      console.error(err);
    } finally {
      setLoading(false);
    }
  };

  return (
    <main className={styles.main}>
      <div className={styles.card}>
        <h1 className={styles.title}>Ställ in ditt quiz</h1>
        <p className={styles.subtitle}>
          Anpassa antal frågor samt region innan du kör igång
        </p>

        <section className={styles.section}>
          <div className={styles.sectionLabel}>Antal frågor</div>
          <div className={styles.optionRow}>
            {QUESTION_COUNTS.map((count) => (
              <button
                key={count}
                className={
                  questionCount === count
                    ? `${styles.optionBtn} ${styles.optionBtnActive}`
                    : styles.optionBtn
                }
                onClick={() => setQuestionCount(count)}
              >
                {count}
              </button>
            ))}
          </div>
        </section>

        <section className={styles.section}>
          <div className={styles.sectionLabel}>Region (valfritt)</div>
          <div className={styles.pillRow}>
            {REGIONS.map((r) => (
              <button
                key={r.value}
                className={
                  region === r.value
                    ? `${styles.pill} ${styles.pillActive}`
                    : styles.pill
                }
                onClick={() => setRegion(r.value)}
              >
                {r.label}
              </button>
            ))}
          </div>
        </section>

        {error && <p className={styles.error}>{error}</p>}

        <button
          className={styles.btnStart}
          onClick={handleStart}
          disabled={loading}
        >
          {loading ? "Laddar..." : "Starta quiz!"}
        </button>
      </div>
    </main>
  );
}
