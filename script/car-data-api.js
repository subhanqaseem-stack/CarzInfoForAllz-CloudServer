// Simple Car Data Script
// Student: Subhan Qaseem
// Domain: carzinfoforallz.online

const cars = {
    civic: { brand: "Honda", power: "158 hp", type: "Sedan" },
    corolla: { brand: "Toyota", power: "139 hp", type: "Sedan" },
    mustang: { brand: "Ford", power: "450 hp", type: "Sports" },
    patrol: { brand: "Nissan", power: "400 hp", type: "SUV" }
};

const car = process.argv[2];

if (!car) {
    console.log("Usage: node car-data-api.js <car-name>");
    process.exit(1);
}

const info = cars[car.toLowerCase()];
if (!info) {
    console.log("Car not found. Try: civic, corolla, mustang, patrol");
} else {
    console.log("Car Information:");
    console.log(info);
}

