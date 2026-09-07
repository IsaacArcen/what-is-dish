import { useState } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import styles from "./QuizPlay.module.css";

export default function QuizPlay() {
  const location = useLocation();
  const navigate = useNavigate();

  // frågorna kommer från QuizSettings via navigate(..., { state: { questions } })
  // om sidan laddas direkt (utan state, t.ex. via reload) finns ingen data (då hanteras det)
  const questions = location.state?.questions ?? [];

  // vilken fråga (index i questions-arrayen) vi är på just nu
  const [currentIndex, setCurrentIndex] = useState(0);

  // vilket försök vi är på för DENNA fråga (1, 2 eller 3)
  const [attempt, setAttempt] = useState(1);

  // totala poäng genom hela quizet
  const [totalPoints, setTotalPoints] = useState(0);

  // senaste svaret från backend (AnswerResultDto) (null tills man klickat ett alternativ)
  const [result, setResult] = useState(null);

  // true medan vi väntar på svar från backend
  const [loading, setLoading] = useState(false);

  // håller koll på vilka DishId:n man redan klickat fel på för denna fråga, (så man inte kan klicka samma fel alternativ igen)
  const [triedIds, setTriedIds] = useState([]);

  const currentQuestion = questions[currentIndex];
  const isLastQuestion = currentIndex === questions.length - 1;

  // om man hamnar här utan frågor (t.ex. via direktlänk): skicka tillbaka till inställningar
  if (questions.length === 0) {
    return (
      <main className={styles.main}>
        <div className={styles.card}>
          <p className={styles.emptyText}>
            Inga frågor hittades. Gå tillbaka och ställ in ett nytt quiz.
          </p>
          <button
            className={styles.btnPrimary}
            onClick={() => navigate("/quiz")}
          >
            Till quiz-inställningar
          </button>
        </div>
      </main>
    );
  }

  // körs när användaren klickar på ett svarsalternativ
  const handleGuess = async (dishId) => {
    if (loading || result?.correct) return; // förhindra dubbelklick / klick efter rätt svar

    setLoading(true);
    try {
      const res = await fetch("http://localhost:5097/api/quiz/answer", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          CountryId: currentQuestion.countryId,
          GuessedDishId: dishId,
          Attempt: attempt,
        }),
      });

      if (!res.ok)
        throw new Error((await res.text()) || "Kunde inte utvärdera svaret");

      const data = await res.json();
      setResult(data);

      if (data.correct) {
        // rätt svar: lägg till poängen direkt
        setTotalPoints((prev) => prev + data.points);
      } else {
        // fel svar: markera detta alternativ som "redan testat" så det inte går att klicka igen
        setTriedIds((prev) => [...prev, dishId]);

        if (attempt >= 3) {
          // sista försöket är förbrukat: rätt svar visas via result.correctDishName,
          // användaren måste nu klicka "Nästa fråga" för att gå vidare
        } else {
          // fortfarande försök kvar: öka attempt-räknaren så nästa klick räknas som nästa försök
          setAttempt((prev) => prev + 1);
        }
      }
    } catch (err) {
      console.error(err);
    } finally {
      setLoading(false);
    }
  };

  // går vidare till nästa fråga, eller till en resultatsida om det var den sista
  const handleNext = () => {
    if (isLastQuestion) {
      navigate("/quiz/resultat", {
        state: { totalPoints, totalQuestions: questions.length },
      });
      return;
    }
    setCurrentIndex((prev) => prev + 1);
    setAttempt(1);
    setResult(null);
    setTriedIds([]);
  };

  // Kan man gå vidare till nästa fråga just nu? Antingen om man svarat rätt, eller om man förbrukat alla tre försöken
  const canGoNext =
    result?.correct ||
    attempt > 3 ||
    (result && !result.correct && attempt >= 3 && result.correctDishName);

  const progressPercent =
    ((currentIndex + (canGoNext ? 1 : 0)) / questions.length) * 100;

