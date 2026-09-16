import { useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useAuth } from '../auth/Auth.Context';
import styles from './ProfileSettingsPage.module.css';

export default function ProfileSettingsPage() {
  const navigate = useNavigate();
  const {
    user,
    isAuthenticated,
    isBooting,
    updateAccount,
    changePassword,
    deleteAccount,
  } = useAuth();
  const [accountForm, setAccountForm] = useState({ name: '', email: '' });
  const [passwordForm, setPasswordForm] = useState({ currentPassword: '', newPassword: '', confirmPassword: '' });
  const [deletePassword, setDeletePassword] = useState('');
  const [deleteConfirmed, setDeleteConfirmed] = useState(false);
  const [accountMessage, setAccountMessage] = useState('');
  const [passwordMessage, setPasswordMessage] = useState('');
  const [deleteMessage, setDeleteMessage] = useState('');
  const [isSavingAccount, setIsSavingAccount] = useState(false);
  const [isSavingPassword, setIsSavingPassword] = useState(false);
  const [isDeleting, setIsDeleting] = useState(false);

  useEffect(() => {
    if (user) setAccountForm({ name: user.name, email: user.email });
  }, [user]);

  async function submitAccount(e) {
    e.preventDefault();
    setAccountMessage('');
    setIsSavingAccount(true);

    try {
      await updateAccount(accountForm);
      setAccountMessage('Dina kontouppgifter är uppdaterade.');
    } catch (error) {
      setAccountMessage(error.message || 'Kunde inte uppdatera kontot.');
    } finally {
      setIsSavingAccount(false);
    }
  }

  async function submitPassword(e) {
    e.preventDefault();
    setPasswordMessage('');

    if (passwordForm.newPassword !== passwordForm.confirmPassword) {
      setPasswordMessage('De nya lösenorden matchar inte.');
      return;
    }

    setIsSavingPassword(true);
    try {
      await changePassword(passwordForm);
      setPasswordForm({ currentPassword: '', newPassword: '', confirmPassword: '' });
      setPasswordMessage('Ditt lösenord är ändrat.');
    } catch (error) {
      setPasswordMessage(error.message || 'Kunde inte ändra lösenordet.');
    } finally {
      setIsSavingPassword(false);
    }
  }

  async function submitDeleteAccount(e) {
    e.preventDefault();
    setDeleteMessage('');

    if (!deleteConfirmed) {
      setDeleteMessage('Bekräfta att du vill radera kontot.');
      return;
    }

    setIsDeleting(true);
    try {
      await deleteAccount({ password: deletePassword });
      navigate('/', { replace: true });
    } catch (error) {
      setDeleteMessage(error.message || 'Kunde inte radera kontot.');
      setIsDeleting(false);
    }
  }

  if (isBooting) {
    return <main className={styles.main}><h1 className={styles.title}>Laddar inställningar...</h1></main>;
  }

  if (!isAuthenticated || !user) {
    return (
      <main className={styles.main}>
        <section className={styles.card}>
          <h1 className={styles.title}>Ingen aktiv inloggning</h1>
          <p className={styles.subtitle}>Logga in för att hantera dina kontoinställningar.</p>
          <Link to="/auth" className={styles.primaryBtn}>Gå till inloggning</Link>
        </section>
      </main>
    );
  }

  return (
    <main className={styles.main}>
      <section className={styles.card}>
        <Link to="/profile" className={styles.backLink}>&larr; Tillbaka till profil</Link>
        <h1 className={styles.title}>Kontoinställningar</h1>
        <p className={styles.subtitle}>Hantera dina uppgifter och säkerhet.</p>

        <section className={styles.settingsSection}>
          <h2 className={styles.sectionTitle}>Kontouppgifter</h2>
          <form className={styles.settingsForm} onSubmit={submitAccount}>
            <label className={styles.label}>Namn
              <input className={styles.input} value={accountForm.name} onChange={e => setAccountForm(prev => ({ ...prev, name: e.target.value }))} minLength={2} required />
            </label>
            <label className={styles.label}>E-post
              <input className={styles.input} type="email" value={accountForm.email} onChange={e => setAccountForm(prev => ({ ...prev, email: e.target.value }))} required />
            </label>
            {accountMessage && <p className={styles.formMessage}>{accountMessage}</p>}
            <button className={styles.secondaryBtn} type="submit" disabled={isSavingAccount}>{isSavingAccount ? 'Sparar...' : 'Spara ändringar'}</button>
          </form>
        </section>

        <section className={styles.settingsSection}>
          <h2 className={styles.sectionTitle}>Lösenord</h2>
          <form className={styles.settingsForm} onSubmit={submitPassword}>
            <label className={styles.label}>Nuvarande lösenord
              <input className={styles.input} type="password" value={passwordForm.currentPassword} onChange={e => setPasswordForm(prev => ({ ...prev, currentPassword: e.target.value }))} required />
            </label>
            <label className={styles.label}>Nytt lösenord
              <input className={styles.input} type="password" minLength={6} value={passwordForm.newPassword} onChange={e => setPasswordForm(prev => ({ ...prev, newPassword: e.target.value }))} required />
            </label>
            <label className={styles.label}>Bekräfta nytt lösenord
              <input className={styles.input} type="password" minLength={6} value={passwordForm.confirmPassword} onChange={e => setPasswordForm(prev => ({ ...prev, confirmPassword: e.target.value }))} required />
            </label>
            {passwordMessage && <p className={styles.formMessage}>{passwordMessage}</p>}
            <button className={styles.secondaryBtn} type="submit" disabled={isSavingPassword}>{isSavingPassword ? 'Ändrar...' : 'Ändra lösenord'}</button>
          </form>
        </section>

        <section className={`${styles.settingsSection} ${styles.dangerSection}`}>
          <h2 className={styles.sectionTitle}>Radera konto</h2>
          <p className={styles.subtitle}>Detta raderar ditt konto och din sparade quizprogress permanent.</p>
          <form className={styles.settingsForm} onSubmit={submitDeleteAccount}>
            <label className={styles.label}>Nuvarande lösenord
              <input className={styles.input} type="password" value={deletePassword} onChange={e => setDeletePassword(e.target.value)} required />
            </label>
            <label className={styles.confirmLabel}>
              <input type="checkbox" checked={deleteConfirmed} onChange={e => setDeleteConfirmed(e.target.checked)} />
              Jag förstår att detta inte kan ångras.
            </label>
            {deleteMessage && <p className={styles.errorText}>{deleteMessage}</p>}
            <button className={styles.deleteBtn} type="submit" disabled={isDeleting}>{isDeleting ? 'Raderar...' : 'Radera mitt konto'}</button>
          </form>
        </section>
      </section>
    </main>
  );
}
