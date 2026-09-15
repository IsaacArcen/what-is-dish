import { useEffect, useState } from "react";
import styles from "../pages/BloggPage.module.css";
import RecipeModal from "./RecipeModal";

export default function DailyRecipeCard() {
  const [recipe, setRecipe] = useState(null);
  const [showModal, setShowModal] = useState(false);

  useEffect(() => {
    fetch("http://localhost:5097/api/recipes/daily")
      .then((res) => res.json())
      .then(setRecipe)
      .catch((err) => console.error(err));
  }, []);

  if (!recipe) return null;

  return (
    <>
      <h3 style={{ textAlign: "center", marginBottom: "12px" }}>
        Dagens recept
      </h3>
      <article className={styles.card}>
        <div className={styles.cardHeader}>
          <img
            className={styles.flag}
            src={recipe.flagUrl}
            alt={`Flagga för ${recipe.countryName}`}
          />
          <span className={styles.country}>{recipe.countryName}</span>
        </div>

        <h2 className={styles.dishName}>{recipe.dishName}</h2>

        {recipe.dishImageUrl && (
          <img
            src={recipe.dishImageUrl}
            alt={recipe.dishName}
            style={{ width: "100%", borderRadius: "8px" }}
          />
        )}

        <button
          onClick={() => setShowModal(true)}
          className={styles.description}
          style={{
            background: "none",
            border: "none",
            cursor: "pointer",
            textDecoration: "underline",
          }}
        >
          Visa recept
        </button>
      </article>

      {showModal && (
        <RecipeModal recipe={recipe} onClose={() => setShowModal(false)} />
      )}
    </>
  );
}
