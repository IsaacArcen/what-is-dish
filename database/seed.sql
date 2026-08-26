PRAGMA foreign_keys = ON;

INSERT INTO countries (country_name, continent, flag_url)
VALUES
('Japan', 'Asia', 'https://flagcdn.com/w320/jp.png'),
('Italy', 'Europe', 'https://flagcdn.com/w320/it.png'),
('Mexico', 'North America', 'https://flagcdn.com/w320/mx.png');

INSERT INTO dishes (
  country_id,
  dish_name,
  is_correct,
  dish_image_url,
  dish_history,
  hint
)
VALUES
(
  1,
  'Sushi',
  1,
  'https://example.com/sushi.jpg',
  'Sushi är en japansk maträtt som ofta består av vinägerkryddat ris tillsammans med fisk, skaldjur eller grönsaker.',
  'Den här rätten innehåller ofta ris och fisk.'
),
(1, 'Ramen', 0, NULL, NULL, NULL),
(1, 'Tempura', 0, NULL, NULL, NULL),
(1, 'Okonomiyaki', 0, NULL, NULL, NULL),

(
  2,
  'Pizza',
  1,
  'https://example.com/pizza.jpg',
  'Pizza är en italiensk maträtt som framför allt kopplas till Neapel. Den består ofta av tunn deg, tomatsås, ost och olika toppings.',
  'Rätten bakas i ugn och har ofta tomatsås och ost.'
),
(2, 'Pasta Carbonara', 0, NULL, NULL, NULL),
(2, 'Risotto', 0, NULL, NULL, NULL),
(2, 'Lasagna', 0, NULL, NULL, NULL),

(
  3,
  'Tacos',
  1,
  'https://example.com/tacos.jpg',
  'Tacos är en mexikansk maträtt som vanligtvis serveras i en tortilla med fyllning som kött, grönsaker, salsa och andra tillbehör.',
  'Rätten serveras ofta i en tortilla med olika fyllningar.'
),
(3, 'Enchiladas', 0, NULL, NULL, NULL),
(3, 'Tamales', 0, NULL, NULL, NULL),
(3, 'Quesadillas', 0, NULL, NULL, NULL);