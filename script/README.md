# Car Data Script – `car-data-api.js`

## Purpose

This Node.js script prints simple sample information about selected car models. It demonstrates the use of a script alongside the website and has a clear, verifiable output on the server.

## How It Works

- The script defines a small in-memory object containing:
  - Brand
  - Power (approximate horsepower)
  - Type (sedan, SUV, sports, etc.)

- The user runs the script with a car model name (e.g. `civic`) and the script prints out the matching information.

## How to Run (on the server)

1. Connect to the EC2 instance via SSH.

2. Make sure Node.js is installed:

   ```bash
   node -v
Car Information:
{ brand: 'Honda', power: '158 hp', type: 'Sedan' }
