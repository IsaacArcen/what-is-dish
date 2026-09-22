# What the dish?!

En quiz-app där användare får se en landsflagga och ska välja rätt nationalrätt eller känd maträtt från landet.

## Teknik
- React (frontend)
- ASP.NET Core (backend)
- Entity Framework Core + SQLite (databas)

## Funktioner
- Quiz med flaggor
- 4 svarsalternativ
- Ledtråd vid fel svar
- Bild på maträtten
- Kort historia om maträtten
- Bloggsida med alla länder och rätter
- Matchningsquiz (para ihop flagga och rätt)
- Inloggning och profilsida med quizhistorik

## Kom igång

### Krav
- [.NET SDK](https://dotnet.microsoft.com/download) (för backend)
- [Node.js](https://nodejs.org/) med npm (för frontend)

### 1. Starta backend
```bash
cd backend-dotnet
dotnet restore
dotnet run
```
Backend startar på `http://localhost:5097`.

### 2. Starta frontend
Öppna en ny terminal:
```bash
cd frontend
npm install
npm run dev
```
Frontend startar på `http://localhost:5173` — öppna länken i webbläsaren.

**Observera:** både backend och frontend behöver köra samtidigt, i varsin terminal, för att appen ska fungera fullt ut.


