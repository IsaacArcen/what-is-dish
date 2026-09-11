PRAGMA foreign_keys = ON;

CREATE TABLE countries (
    country_id INTEGER PRIMARY KEY AUTOINCREMENT,
    country_name VARCHAR(100) NOT NULL UNIQUE,
    continent VARCHAR(50) NOT NULL,
    flag_url TEXT NOT NULL
);

CREATE TABLE dishes (
    dish_id INTEGER PRIMARY KEY AUTOINCREMENT,
    country_id INTEGER NOT NULL,
    dish_name VARCHAR(100) NOT NULL,
    is_correct BOOLEAN NOT NULL DEFAULT 0,
    dish_image_url TEXT,
    dish_history TEXT,
    hint TEXT,
    FOREIGN KEY (country_id) REFERENCES countries(country_id),
    UNIQUE (country_id, dish_name)
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(80) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE auth_tokens (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    token VARCHAR(64) NOT NULL UNIQUE,
    user_id INTEGER NOT NULL,
    expires_at DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);