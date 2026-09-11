import { BrowserRouter, Routes, Route } from "react-router-dom";
import HomePage from "./HomePage";
import Header from "./Components/Header";
import QuizSettings from "./QuizSettings";
import BloggPage from "./BloggPage";
import QuizPlay from "./QuizPlay";
import QuizOverviewPage from "./QuizOverviewPage";
import MatchningsQuizPage from "./MatchningsQuizPage";

function App() {
  return (
    <BrowserRouter>
      <Header />
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/quiz" element={<QuizSettings />} />
        <Route path="/quiz/spela" element={<QuizPlay />} />
        <Route path="/blogg" element={<BloggPage />} />
        <Route path="/quiz/summary" element={<QuizOverviewPage />} />
        <Route path="/quiz/matchning" element={<MatchningsQuizPage />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;