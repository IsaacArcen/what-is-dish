import { BrowserRouter, Routes, Route } from "react-router-dom";
import HomePage from "./HomePage";
import Header from "./Components/Header";
import QuizSettings from "./QuizSettings";
import BloggPage from "./BloggPage";
import QuizPlay from "./QuizPlay";

function App() {
  return (
    <BrowserRouter>
      <Header />
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/quiz" element={<QuizSettings />} />
        <Route path="/quiz/spela" element={<QuizPlay />} />
        <Route path="/blogg" element={<BloggPage />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
