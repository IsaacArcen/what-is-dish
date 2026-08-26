const sqlite3 = require('sqlite3').verbose();
const path = require('path');

//sökväg till SQLite filen
const dbPath = path.join(__dirname, '..', '..', 'database', 'what_is_dish.db');

//öppnar ansutningen till databasen
const db = new sqlite3.Database(dbPath, (error) => {
  if (error) {
    console.error('Could not connect to database:', error.message);
  } else {
    console.log('Connected to SQLite database');
  }
});

module.exports = db;