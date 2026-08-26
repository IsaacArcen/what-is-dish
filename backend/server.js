const express = require('express');
const cors = require('cors');
const db = require('./database/db');

const app = express();

// Gör att frontend kan prata med backend.
app.use(cors());

// Gör att servern kan läsa JSON från requests.
app.use(express.json());

// Hämtar alla länder. Bra för kategorier/filter.
app.get('/api/countries', (req, res) => {
  db.all('SELECT * FROM countries', [], (error, rows) => {
    if (error) {
      return res.status(500).json({ error: error.message });
    }

    res.json(rows);
  });
});

// Hämtar alla maträtter, både rätta och felaktiga alternativ.
app.get('/api/dishes', (req, res) => {
  db.all('SELECT * FROM dishes', [], (error, rows) => {
    if (error) {
      return res.status(500).json({ error: error.message });
    }

    res.json(rows);
  });
});

// Hämtar bara rätt maträtt per land för bloggsidan.
app.get('/api/blog', (req, res) => {
  const sql = `
    SELECT
      countries.country_id,
      countries.country_name,
      countries.continent,
      countries.flag_url,
      dishes.dish_id,
      dishes.dish_name,
      dishes.dish_image_url,
      dishes.dish_history,
      dishes.hint
    FROM dishes
    JOIN countries ON dishes.country_id = countries.country_id
    WHERE dishes.is_correct = 1
  `;

  db.all(sql, [], (error, rows) => {
    if (error) {
      return res.status(500).json({ error: error.message });
    }

    res.json(rows);
  });
});

//Skapa quizdata
app.get('/api/quiz', (req, res) => {
  const { continent = 'all', limit = 5 } = req.query;

  // Börjar med att hämta rätt maträtt för varje land.
  let sql = `
    SELECT
      countries.country_id,
      countries.country_name,
      countries.continent,
      countries.flag_url,
      dishes.dish_id,
      dishes.dish_name,
      dishes.dish_image_url,
      dishes.dish_history,
      dishes.hint
    FROM countries
    JOIN dishes ON countries.country_id = dishes.country_id
    WHERE dishes.is_correct = 1
  `;

  const params = [];

  // Om användaren valt en specifik kontinent filtrerar vi på den.
  if (continent !== 'all') {
    sql += ' AND countries.continent = ?';
    params.push(continent);
  }

  // Slumpar fram antal frågor enligt limit.
  sql += ' ORDER BY RANDOM() LIMIT ?';
  params.push(Number(limit));

  db.all(sql, params, (error, questions) => {
    if (error) {
      return res.status(500).json({ error: error.message });
    }

    // För varje land/fråga hämtar vi alla 4 maträtter från samma land.
    const questionPromises = questions.map((question) => {
      return new Promise((resolve, reject) => {
        db.all(
          'SELECT dish_id, dish_name, is_correct FROM dishes WHERE country_id = ?',
          [question.country_id],
          (optionsError, options) => {
            if (optionsError) {
              reject(optionsError);
              return;
            }

            resolve({
              country_id: question.country_id,
              country_name: question.country_name,
              continent: question.continent,
              flag_url: question.flag_url,

              // Detta är facit.
              correct_dish_id: question.dish_id,
              correct_dish_name: question.dish_name,

              // Dessa visas som ledtrådar efter fel svar.
              dish_image_url: question.dish_image_url,
              dish_history: question.dish_history,
              hint: question.hint,

              // Detta är de 4 svarsalternativen.
              options
            });
          }
        );
      });
    });

    Promise.all(questionPromises)
      .then((quiz) => res.json(quiz))
      .catch((promiseError) => {
        res.status(500).json({ error: promiseError.message });
      });
  });
});

// Startar backend-servern.
app.listen(3001, () => {
  console.log('Server running on http://localhost:3001');
});