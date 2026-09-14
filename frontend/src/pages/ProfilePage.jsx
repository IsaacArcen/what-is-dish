import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { useAuth } from '../auth/Auth.Context';
    import styles from './ProfilePage.module.css';

function formatDate(sqliteDateTime) {
  if (!sqliteDateTime) return '-';

  const normalizedDate = sqliteDateTime.includes(' ')
    ? `${sqliteDateTime.replace(' ', 'T')}Z`
    : sqliteDateTime;
  const parsed = new Date(normalizedDate);
  if (Number.isNaN(parsed.getTime())) return sqliteDateTime;

  return new Intl.DateTimeFormat('sv-SE', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  }).format(parsed);
}

export default function ProfilePage() {
  const { user, token, isAuthenticated, isBooting, logout } = useAuth();
  const [quizHistory, setQuizHistory] = useState(null);
  const [historyError, setHistoryError] = useState(false);

  useEffect(() => {
    if (!isAuthenticated || !token) return;

    setHistoryError(false);
    fetch('http://localhost:5097/api/scores/me', {
      headers: { Authorization: `Bearer ${token}` },
    })
      .then(res => {
        if (!res.ok) throw new Error('Could not load quiz history');
        return res.json();
      })
      .then(setQuizHistory)
      .catch(() => setHistoryError(true));
  }, [isAuthenticated, token]);

  if (isBooting) {
    return (
      <main className={styles.main}>
        <h1 className={styles.title}>Laddar profil...</h1>
      </main>
    );
  }

  if (!isAuthenticated || !user) {
    return (
      <main className={styles.main}>
        <section className={styles.card}>
          <h1 className={styles.title}>Ingen aktiv inloggning</h1>
          <p className={styles.subtitle}>Logga in eller skapa konto för att se din profil.</p>
          <Link to="/auth" className={styles.primaryBtn}>Gå till inloggning</Link>
        </section>
      </main>
    );
  }

  return (
    <main className={styles.main}>
      <section className={styles.card}>
        <div className={styles.profileHeading}>
          <p className={styles.badge}>Profil</p>
          <Link to="/settings" className={styles.settingsLink} aria-label="Öppna kontoinställningar" title="Kontoinställningar">
            &#9881;
          </Link>
        </div>
        <h1 className={styles.title}>{user.name}</h1>
        <p className={styles.subtitle}>Din grundprofil är nu skapad.</p>

        <div className={styles.metaList}>
          <div className={styles.metaRow}>
            <span>E-post</span>
            <strong>{user.email}</strong>
          </div>
          <div className={styles.metaRow}>
            <span>Medlem sedan</span>
            <strong>{formatDate(user.createdAt)}</strong>
          </div>
        </div>

        <section className={styles.quizSection}>
          <h2 className={styles.sectionTitle}>Din quizprogress</h2>
          {!quizHistory && !historyError && <p className={styles.mutedText}>Laddar din historik...</p>}
          {historyError && <p className={styles.errorText}>Kunde inte hämta din quizhistorik.</p>}
          {quizHistory && !quizHistory.latest && (
            <p className={styles.mutedText}>Du har inte avslutat något quiz ännu. Ditt första resultat visas här.</p>
          )}
          {quizHistory?.latest && (
            <>
              <div className={styles.latestResult}>
                <div>
                  <span className={styles.latestLabel}>Senaste quiz</span>
                  <strong>{quizHistory.latest.score}/{quizHistory.latest.max_score} poäng</strong>
                  <span>{quizHistory.latest.difficulty} - {formatDate(quizHistory.latest.completed_at)}</span>
                </div>
                <span className={styles.percent}>{Math.round((quizHistory.latest.score / quizHistory.latest.max_score) * 100)}%</span>
              </div>

              <div className={styles.statGrid}>
                <div className={styles.statItem}>
                  <strong>{quizHistory.summary.total_quizzes}</strong>
                  <span>Avslutade quiz</span>
                </div>
                <div className={styles.statItem}>
                  <strong>{quizHistory.summary.average_percent}%</strong>
                  <span>Snittresultat</span>
                </div>
                <div className={styles.statItem}>
                  <strong>{quizHistory.summary.best_percent}%</strong>
                  <span>Bästa resultat</span>
                </div>
              </div>

              <h3 className={styles.historyTitle}>Senaste försök</h3>
              <ul className={styles.historyList}>
                {quizHistory.results.map(result => (
                  <li key={result.id} className={styles.historyRow}>
                    <span>{result.difficulty}</span>
                    <span>{result.score}/{result.max_score} poäng</span>
                    <strong>{Math.round((result.score / result.max_score) * 100)}%</strong>
                  </li>
                ))}
              </ul>
            </>
          )}
        </section>

        <div className={styles.actions}>
          <Link to="/quiz" className={styles.secondaryBtn}>Spela quiz</Link>
          <button className={styles.primaryBtn} onClick={logout} type="button">Logga ut</button>
        </div>
      </section>
    </main>
  );
}
