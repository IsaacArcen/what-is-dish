import { BrowserRouter, Routes, Route } from "react-router-dom";
import HomePage from "./pages/HomePage";
import Header from "./Components/Header";
import QuizSettings from "./pages/QuizSettings";
import BloggPage from "./pages/BloggPage";
import QuizPlay from "./pages/QuizPlay";
import QuizOverviewPage from "./pages/QuizOverviewPage";
import AuthPage from "./pages/AuthPage";
import ProfilePage from "./pages/ProfilePage";
import { AuthProvider } from "./auth/Auth.Context";

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
        <Route path="/quiz/summary" element={<QuizOverviewPage />} />
      </Routes>
    </BrowserRouter>
    </AuthProvider>
  );
}

export default App;