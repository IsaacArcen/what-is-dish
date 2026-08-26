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
    dish_image_url TEXT NOT NULL,
    dish_history TEXT NOT NULL,
    hint TEXT NOT NULL,
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
    UNIQUE (country_id, dish_name)
);