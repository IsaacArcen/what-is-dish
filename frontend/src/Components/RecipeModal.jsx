export default function RecipeModal({ recipe, onClose }) {
  const steps = recipe.steps
    .split("\n")
    .map((step) => step.trim())
    .filter(Boolean);

  return (
    <div
      style={{
        position: "fixed",
        inset: 0,
        background: "rgba(0,0,0,0.6)",
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        zIndex: 1000,
      }}
      onClick={onClose}
    >
      <div
        style={{
          background: "white",
          padding: "2rem",
          borderRadius: "12px",
          maxWidth: "500px",
          width: "90%",
          maxHeight: "80vh",
          overflowY: "auto",
        }}
        onClick={(e) => e.stopPropagation()}
      >
        <h2>{recipe.dishName}</h2>
        <h3>Ingredienser</h3>
        <p>{recipe.ingredients}</p>

        <h3>Gör så här</h3>
        <ol>
          {steps.map((step, i) => (
            <li key={i}>{step.replace(/^\d+\.\s*/, "")}</li>
          ))}
        </ol>

        <button onClick={onClose}>Stäng</button>
      </div>
    </div>
  );
}
