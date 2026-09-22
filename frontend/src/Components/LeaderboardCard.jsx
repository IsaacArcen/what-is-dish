import { useEffect, useState } from "react";
import styles from "./LeaderboardCard.module.css";

export default function LeaderboardCard() {
  const [leaderboard, setLeaderboard] = useState([]);

  useEffect(() => {
    fetch("http://localhost:5097/api/leaderboard")
      .then((res) => res.json())
      .then(setLeaderboard)
      .catch((err) => console.error(err));
  }, []);

  return (
    <article className={styles.card}>
      <div className={styles.header}>
        <span className={styles.trophy}>🏆</span>
        <span className={styles.heading}>Highscore</span>
      </div>

      {leaderboard.length === 0 ? (
        <p className={styles.empty}>Ingen har spelat än.</p>
      ) : (
        <ol className={styles.list}>
          {leaderboard.map((entry, i) => (
            <li key={i} className={styles.entry}>
              <span>{entry.userName}</span>
              <span className={styles.score}>{entry.totalScore}p</span>
            </li>
          ))}
        </ol>
      )}
    </article>
  );
}
