import styles from "./RecipeModal.module.css";

export default function RecipeModal({ recipe, onClose }) {
  const steps = recipe.steps
    .split("\n")
    .map((step) => step.trim())
    .filter(Boolean);

  return (
    <div className={styles.overlay} onClick={onClose}>
      <div className={styles.modal} onClick={(e) => e.stopPropagation()}>
        <h2 className={styles.dishName}>{recipe.dishName}</h2>

        <h3 className={styles.sectionTitle}>Ingredienser</h3>
        <p className={styles.ingredients}>{recipe.ingredients}</p>

        <h3 className={styles.sectionTitle}>Gör så här</h3>
        <ol className={styles.steps}>
          {steps.map((step, i) => (
            <li key={i}>{step.replace(/^\d+\.\s*/, "")}</li>
          ))}
        </ol>

        <button className={styles.closeBtn} onClick={onClose}>
          Stäng
        </button>
      </div>
    </div>
  );
}
