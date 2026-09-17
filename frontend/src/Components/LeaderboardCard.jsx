import { useEffect, useState } from "react";
import styles from "../pages/BloggPage.module.css";

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
      <div className={styles.cardHeader}>
        <span style={{ fontSize: "1.5rem" }}>🏆</span>
        <span className={styles.country}>Highscore</span>
      </div>

      <ol style={{ paddingLeft: "1.2rem", margin: 0 }}>
        {leaderboard.map((entry, i) => (
          <li key={i} style={{ marginBottom: "4px" }}>
            {entry.userName} — {entry.totalScore}p
          </li>
        ))}
      </ol>

      {leaderboard.length === 0 && (
        <p className={styles.description}>Ingen har spelat än.</p>
      )}
    </article>
  );
}
