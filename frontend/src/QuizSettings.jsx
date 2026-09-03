import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import styles from "./QuizSettings.module.css";

const QUESTION_COUNTS = [5, 10, 20];

export default function QuizSettings() {
  // lista med kontinenter hämtad från backend
  const [continents, setContinents] = useState([]);

  // antal frågor användaren valt, default 5
  const [questionCount, setQuestionCount] = useState(5);

  // vilka kontinenter användaren valt att filtrera på (tom lista = alla)
  const [selectedContinents, setSelectedContinents] = useState([]);

  // ant medan vi väntar på svar från backend (används för att disabla knappen + visa "Laddar...")
  const [loading, setLoading] = useState(false);

  // felmeddelande att visa om något går fel, t.ex. för få länder i vald region om det ens går
  const [error, setError] = useState(null);

  const navigate = useNavigate();

  // körs en gång när komponenten laddas
  // hämtar listan över tillgängliga kontinenter från GET /api/quiz-settings/continents
  useEffect(() => {
    fetch("http://localhost:5097/api/quiz-settings/continents")
      .then((res) => res.json())
      .then(setContinents)
      .catch((err) => console.error("Kunde inte hämta regioner", err));
  }, []);

  // lägger till/tar bort en kontinent i selectedContinents när användaren klickar på en knappeluring
  // m kontinenten redan finns i listan: filtrera bort (avmarkera)
  // om den inte finns: lägg till den (markera)
  const toggleContinent = (continent) => {
    setSelectedContinents((prev) =>
      prev.includes(continent)
        ? prev.filter((c) => c !== continent)
        : [...prev, continent],
    );
  };

  // körs när användaren klickar "Starta quiz!"
  // skickar antal frågor + valda kontinenter som POST till backend
  // navigerar sedan vidare till quiz-sidan med länderna som kom tillbaka
  const handleStart = async () => {
    setLoading(true);
    setError(null);

    try {
      const res = await fetch(
        "http://localhost:5097/api/quiz-settings/countries",
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          // OBS: nycklarna (NumberOfQuestions, Continents) måste matcha
          // QuizSettingsRequestDto.cs exakt (pga C# är skiftlägeskänsligt vid JSON-bindning)
          body: JSON.stringify({
            NumberOfQuestions: questionCount,
            Continents: selectedContinents,
          }),
        },
      );

      // backend svarar med 400 Bad Request om t.ex. för få länder finns i valda regioner
      if (!res.ok) {
        const msg = await res.text();
        throw new Error(msg || "Kunde inte hämta quizfrågor");
      }

      const countries = await res.json();

      // skickar med länderna i navigationens "state" (tillgängligt på quiz-sidan)
      // via useLocation().state, utan att synas i URL:en
      navigate("/quiz/spela", { state: { countries } });
    } catch (err) {
      setError(err.message || "Något gick fel, försök igen.");
      console.error(err);
    } finally {
      // körs oavsett om det gick bra eller inte (stänger av "laddar"-läget)
      setLoading(false);
    }
  };

  return (
    <main className={styles.main}>
      <div className={styles.card}>
        <h1 className={styles.title}>Ställ in ditt quiz</h1>
        <p className={styles.subtitle}>
          Anpassa antal frågor samt regioner innan du kör igång
        </p>

        {/* antal frågor: tre knappar, en alltid aktiv (röd) */}
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

        {/* regioner: flerval, byggs från backend-datan i `continents` */}
        <section className={styles.section}>
          <div className={styles.sectionLabel}>
            Regioner (valfritt, flera går att välja)
          </div>
          <div className={styles.pillRow}>
            {continents.map((continent) => (
              <button
                key={continent}
                className={
                  selectedContinents.includes(continent)
                    ? `${styles.pill} ${styles.pillActive}`
                    : styles.pill
                }
                onClick={() => toggleContinent(continent)}
              >
                {continent}
              </button>
            ))}
          </div>
        </section>

        {/* visas bara om error inte är null :) */}
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
