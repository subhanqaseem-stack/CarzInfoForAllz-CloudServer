/*
Car data fetch script (API Ninjas). Usage: node car-data-api.js civic
Replace DEMO_KEY with a real API key for more reliable results.
*/

const https = require("https");
const API_KEY = "DEMO_KEY"; // replace with your API key
const model = process.argv[2] || "civic";

function getCarData(m) {
  const url = `https://api.api-ninjas.com/v1/cars?model=${encodeURIComponent(m)}`;
  const options = { headers: { "X-Api-Key": API_KEY } };
  https.get(url, options, (res) => {
    let data = "";
    res.on("data", chunk => data += chunk);
    res.on("end", () => {
      try {
        const arr = JSON.parse(data);
        if (!arr.length) return console.log("No data found for model:", m);
        const car = arr[0];
        console.log("---- Car Info ----");
        console.log(`Make: ${car.make}`);
        console.log(`Model: ${car.model}`);
        console.log(`Year: ${car.year}`);
        console.log(`Fuel Type: ${car.fuel_type}`);
        console.log(`Horsepower: ${car.horsepower}`);
      } catch (e) {
        console.error("Error parsing response:", e);
      }
    });
  }).on("error", (err) => console.error("Request error:", err));
}

getCarData(model);
