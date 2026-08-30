import { BrowserRouter, Routes, Route } from 'react-router-dom'
import HomePage from './HomePage'
import Header from './Components/Header'  

function App() {
  return (
    <BrowserRouter>
      <Header />
      <Routes>
        <Route path="/" element={<HomePage />} />
      </Routes>
    </BrowserRouter>
  )
}

export default App
