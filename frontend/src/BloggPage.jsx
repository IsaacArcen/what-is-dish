import { useEffect, useMemo, useState } from "react";
import styles from "./BloggPage.module.css";

export default function BloggPage() {
    const [dishes, setDishes] = useState([]);
    const  [search, setSearch] = useState("");
    const [error, setError] = useState(null);

    useEffect(() => {
        fetch("http://localhost:5097/api/blog")
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
    }, []);

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

return (
    <main className={styles.main}>
      <section className={styles.hero}>
        <h1 className={styles.title}>Mat blogg</h1>
        <p className={styles.subtitle}>
          {dishes.length} länder - nationella rätter och varför de är älskade
        </p>

        <input
          className={styles.search}
          type="search"
          placeholder="Sök efter land eller rätt..."
          value={search}
          onChange={(event) => setSearch(event.target.value)}
        />
      </section>

      {error && <p className={styles.error}>{error}</p>}

      <section className={styles.grid}>
        {filteredDishes.map((dish) => (
          <article key={dish.dishId} className={styles.card}>
            <div className={styles.cardHeader}>
              <img
                className={styles.flag}
                src={dish.flagUrl}
                alt={`Flagga för ${dish.countryName}`}
              />
              <span className={styles.country}>{dish.countryName}</span>
            </div>

            <h2 className={styles.dishName}>{dish.dishName}</h2>

            <p className={styles.description}>
              {dish.dishHistory || dish.hint}
            </p>
          </article>
        ))}
      </section>
    </main>
  );
}