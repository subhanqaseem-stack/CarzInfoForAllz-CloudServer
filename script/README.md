# Car data script

## Purpose
Fetches car specifications for a given model (API Ninjas).

## How to run (on server)
1. Install Node.js (v18):
   curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
   sudo apt install -y nodejs

2. Place `car-data-api.js` in `~/car-scripts/` or run directly from repo.

3. Run:
   node car-data-api.js civic

## Example output
---- Car Info ----
Make: Honda
Model: Civic
Year: 2016
Fuel Type: petrol
Horsepower: 158
