// frontend/src/MatchingQuizPlay.jsx

import { useState } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import { useAuth } from "./auth/Auth.Context";
import styles from "./MatchningsQuizPage.module.css";

const STARTING_ATTEMPTS = 3;

export default function MatchningsQuizPage() {
  const location = useLocation();
  const navigate = useNavigate();
  const { token } = useAuth();

  // Board kommer från QuizSettings via navigate("/quiz/matching", { state: { board } })
  const board = location.state?.board;

  // Håller koll på vilket land användaren har valt på vänstersidan
  const [selectedCountryId, setSelectedCountryId] = useState(null);

  // Dessa listor används för att låsa par som redan är rätt matchade
  const [matchedCountryIds, setMatchedCountryIds] = useState([]);
  const [matchedDishIds, setMatchedDishIds] = useState([]);

  // Matchningsquizet har gemensamma försök för hela rundan
  const [attemptsRemaining, setAttemptsRemaining] = useState(STARTING_ATTEMPTS);

  // Feedback visas efter att användaren har testat ett par
  const [feedback, setFeedback] = useState(null);
  const [loading, setLoading] = useState(false);

  // Om sidan laddas direkt utan quizdata skickar vi tillbaka användaren
  if (!board) {
    return (
      <main className={styles.main}>
        <section className={styles.emptyBox}>
          <p>Inget matchningsquiz hittades. Starta ett nytt quiz.</p>
          <button onClick={() => navigate("/quiz")}>
            Till quiz-inställningar
          </button>
        </section>
      </main>
    );
  }

  const completed = matchedCountryIds.length === board.countries.length;
  const gameOver = attemptsRemaining <= 0 && !completed;

  const selectedCountry = board.countries.find(
    (country) => country.countryId === selectedCountryId,
  );

  const handleCountryClick = (countryId) => {
    // Man ska inte kunna välja ett land som redan är klart
    if (loading || gameOver || matchedCountryIds.includes(countryId)) return;

    setSelectedCountryId(countryId);
    setFeedback(null);
  };

  const handleDishClick = async (dishId) => {
    // Man måste välja ett land först, sedan en rätt
    if (
      loading ||
      gameOver ||
      selectedCountryId === null ||
      matchedDishIds.includes(dishId)
    ) {
      return;
    }

    setLoading(true);

    try {
      // Backend avgör om landet och rätten hör ihop
      const res = await fetch("http://localhost:5097/api/matching-quiz/guess", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          ...(token ? { Authorization: "Bearer " + token } : {}),
        },
        body: JSON.stringify({
          CountryId: selectedCountryId,
          GuessedDishId: dishId,
          AttemptsRemaining: attemptsRemaining,
        }),
      });

      if (!res.ok) {
        throw new Error((await res.text()) || "Kunde inte kontrollera paret");
      }

      const result = await res.json();
      setAttemptsRemaining(result.attemptsRemaining);

      if (result.correct) {
        // Rätt par låses så användaren inte kan klicka på dem igen
        setMatchedCountryIds((prev) => [...prev, selectedCountryId]);
        setMatchedDishIds((prev) => [...prev, dishId]);
        setSelectedCountryId(null);
        setFeedback({ type: "correct", text: "Rätt par!" });
      } else {
        setFeedback({
          type: "wrong",
          text: `Fel par. Du har ${result.attemptsRemaining} försök kvar.`,
        });
      }
    } catch (err) {
      console.error(err);
      setFeedback({ type: "wrong", text: "Något gick fel. Försök igen." });
    } finally {
      setLoading(false);
    }
  };

  return (
    <main className={styles.main}>
      <section className={styles.headerSection}>
        <span className={styles.counter}>
          {matchedCountryIds.length} av {board.countries.length} par
        </span>
        <h1>Matcha flaggan med rätten</h1>
      </section>

      <section className={styles.statusRow}>
        <span>Försök kvar: {attemptsRemaining}</span>
        {selectedCountry && (
          <span>Valt land: {selectedCountry.countryName}</span>
        )}
      </section>

      {feedback && (
        <p
          className={
            feedback.type === "correct" ? styles.correctText : styles.wrongText
          }
        >
          {feedback.text}
        </p>
      )}

      <section className={styles.board}>
        <div className={styles.column}>
          <h2>Flaggor</h2>

          {board.countries.map((country) => {
            const isSelected = selectedCountryId === country.countryId;
            const isMatched = matchedCountryIds.includes(country.countryId);

            return (
              <button
                key={country.countryId}
                className={[
                  styles.countryCard,
                  isSelected ? styles.selected : "",
                  isMatched ? styles.matched : "",
                ].join(" ")}
                onClick={() => handleCountryClick(country.countryId)}
                disabled={isMatched || gameOver}
              >
                <img
                  src={country.flagUrl}
                  alt={`Flaggan för ${country.countryName}`}
                  className={styles.flag}
                />
                <span>{country.countryName}</span>
              </button>
            );
          })}
        </div>

        <div className={styles.column}>
          <h2>Rätter</h2>

          {board.dishes.map((dish) => {
            const isMatched = matchedDishIds.includes(dish.dishId);

            return (
              <button
                key={dish.dishId}
                className={[
                  styles.dishCard,
                  isMatched ? styles.matched : "",
                ].join(" ")}
                onClick={() => handleDishClick(dish.dishId)}
                disabled={isMatched || gameOver || selectedCountryId === null}
              >
                {dish.dishImageUrl && (
                  <img
                    src={dish.dishImageUrl}
                    alt={dish.dishName}
                    className={styles.dishImage}
                  />
                )}
                <span>{dish.dishName}</span>
              </button>
            );
          })}
        </div>
      </section>

      {(completed || gameOver) && (
        <section className={styles.endBox}>
          <h2>{completed ? "Alla par är matchade!" : "Spelet är slut"}</h2>
          <button onClick={() => navigate("/quiz")}>Starta nytt quiz</button>
        </section>
      )}
    </main>
  );
}