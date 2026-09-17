import { useEffect, useMemo, useState } from "react";
import RecipeModal from "../Components/RecipeModal";
import styles from "./BloggPage.module.css";

export default function BloggPage() {
  const [dishes, setDishes] = useState([]);
  const [continents, setContinents] = useState([]);
  const [selectedContinents, setSelectedContinents] = useState([]);
  const [selectedRecipe, setSelectedRecipe] = useState(null);
  const [search, setSearch] = useState("");
  const [error, setError] = useState(null);

  useEffect(() => {
    fetch("http://localhost:5097/api/quiz-settings/continents")
      .then((res) => res.json())
      .then(setContinents)
      .catch((err) => console.error("Kunde inte hämta regioner", err));
  }, []);

  useEffect(() => {
    const params = new URLSearchParams();

    selectedContinents.forEach((continent) => {
      params.append("continents", continent);
    });

    const url = params.toString()
      ? `http://localhost:5097/api/blog?${params.toString()}`
      : "http://localhost:5097/api/blog";

    fetch(url)
      .then((res) => {
        if (!res.ok) {
          throw new Error("Failed to fetch dishes");
        }
        return res.json();
      })
      .then(setDishes)
      .catch((err) => {
        console.error(err);
        setError("Något gick fel när bloggen skulle laddas.");
      });
  }, [selectedContinents]);

  const toggleContinent = (continent) => {
    setSelectedContinents((prev) =>
      prev.includes(continent)
        ? prev.filter((item) => item !== continent)
        : [...prev, continent],
    );
  };

  const filteredDishes = useMemo(() => {
    const searchText = search.toLowerCase().trim();

    if (!searchText) {
      return dishes;
    }

    return dishes.filter((dish) => {
      return (
        dish.countryName.toLowerCase().includes(searchText) ||
        dish.dishName.toLowerCase().includes(searchText) ||
        dish.continent.toLowerCase().includes(searchText)
      );
    });
  }, [dishes, search]);

  const openRecipe = (dish) => {
    if (!dish.ingredients || !dish.steps) return;

    setSelectedRecipe({
      countryName: dish.countryName,
      flagUrl: dish.flagUrl,
      dishName: dish.dishName,
      dishImageUrl: dish.dishImageUrl,
      ingredients: dish.ingredients,
      steps: dish.steps,
    });
  };

  return (
    <main className={styles.main}>
      <div className={styles.pageCard}>
        <section className={styles.hero}>
          <h1 className={styles.title}>Mat blogg</h1>
          <p className={styles.subtitle}>
            {filteredDishes.length} länder - nationella rätter och recept
          </p>

          <input
            className={styles.search}
            type="search"
            placeholder="Sök efter land eller rätt..."
            value={search}
            onChange={(event) => setSearch(event.target.value)}
          />

          <div className={styles.filterRow}>
            {continents.map((continent) => (
              <button
                key={continent}
                className={
                  selectedContinents.includes(continent)
                    ? `${styles.filterPill} ${styles.filterPillActive}`
                    : styles.filterPill
                }
                onClick={() => toggleContinent(continent)}
                type="button"
              >
                {continent}
              </button>
            ))}
          </div>
        </section>

        {error && <p className={styles.error}>{error}</p>}

        <section className={styles.grid}>
          {filteredDishes.map((dish) => (
            <button
              key={dish.dishId}
              className={styles.dishCard}
              onClick={() => openRecipe(dish)}
              type="button"
            >
              <div className={styles.cardHeader}>
                <img
                  className={styles.flag}
                  src={dish.flagUrl}
                  alt={`Flagga för ${dish.countryName}`}
                />
                <span className={styles.country}>{dish.countryName}</span>
              </div>

              {dish.dishImageUrl && (
                <img
                  className={styles.dishImage}
                  src={dish.dishImageUrl}
                  alt={dish.dishName}
                />
              )}

              <h2 className={styles.dishName}>{dish.dishName}</h2>

              <p className={styles.description}>
                {dish.dishHistory || dish.hint}
              </p>
            </button>
          ))}
        </section>
      </div>

      {selectedRecipe && (
        <RecipeModal
          recipe={selectedRecipe}
          onClose={() => setSelectedRecipe(null)}
        />
      )}
    </main>
  );
}
