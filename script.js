function addstock() {
  const stockName = document.getElementById("stockInput").value;
  const price = document.getElementById("avgPriceInput").value;
  const quantity = document.getElementById("stockQuantity").value;

  if (!stockName || !price || !quantity) {
    alert("Please fill all fields.");
    return;
  }

  const card = document.createElement("div");
  card.innerHTML = `
        <h3>${stockName}</h3>
        <p>Average Buy Price: ₹${price}</p>
        <p>Quantity: ${quantity}</p>
      `;

  document.getElementById("stockCardContainer").appendChild(card);

  document.getElementById("stockInput").value = "";
  document.getElementById("avgPriceInput").value = "";
  document.getElementById("stockQuantity").value = "";
}
