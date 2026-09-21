import { BrowserRouter, Routes, Route } from "react-router-dom";
import Header from "./Components/Header";
import MatchningsQuizPage from "./MatchningsQuizPage.jsx";
import { AuthProvider } from "./auth/Auth.Context";
import AuthPage from "./pages/AuthPage";
import BloggPage from "./pages/BloggPage";
import HomePage from "./pages/HomePage";
import ProfilePage from "./pages/ProfilePage";
import ProfileSettingsPage from "./pages/ProfileSettingsPage";
import QuizOverviewPage from "./pages/QuizOverviewPage";
import QuizPlay from "./pages/QuizPlay";
import QuizSettings from "./pages/QuizSettings";

function App() {
  return (
    <AuthProvider>
      <BrowserRouter>
        <Header />
        <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/quiz" element={<QuizSettings />} />
          <Route path="/quiz/spela" element={<QuizPlay />} />
          <Route path="/blogg" element={<BloggPage />} />
          <Route path="/auth" element={<AuthPage />} />
          <Route path="/profile" element={<ProfilePage />} />
          <Route path="/settings" element={<ProfileSettingsPage />} />
          <Route path="/quiz/summary" element={<QuizOverviewPage />} />
          <Route path="/quiz/matchning" element={<MatchningsQuizPage />} />
        </Routes>
      </BrowserRouter>
    </AuthProvider>
  );
}

export default App;
