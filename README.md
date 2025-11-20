# CarzInfoForAllz Cloud Server Project

**Student:** Subhan Qaseem  
**Student ID:** 35313546  

**Domain:** https://carzinfoforallz.online  
**Server IP:** 13.203.229.130  

---

## Project Overview

CarzInfoForAllz is a simple automotive information website designed to help first-time car buyers and everyday drivers make better decisions. The site explains car types, buying tips and maintenance advice in clear and non-technical language.

This project was built for a cloud server assignment. It uses:

- AWS EC2 (Ubuntu) as the IaaS cloud server  
- Nginx as the web server  
- MySQL as the database  
- PHP and WordPress as the CMS  
- Let’s Encrypt + Certbot for HTTPS (SSL/TLS)  
- A small Node.js script (`car-data-api.js`) that prints basic car info to the terminal  

---

## Server Architecture

- **Cloud Provider:** AWS EC2 (Ubuntu 24.04)  
- **Web Server:** Nginx  
- **Application:** WordPress  
- **Database:** MySQL (database: `wp_carz`, user: `wpuser`)  
- **Script:** Node.js script for car data demonstration  
- **Domain & DNS:** carzinfoforallz.online (Namecheap A records)  
- **Security:** HTTPS enabled using Let’s Encrypt

---

## How to Rebuild This Project (Summary)

1. **Launch EC2 Instance**
   - Ubuntu 24.04
   - Open ports 22 (SSH), 80 (HTTP), 443 (HTTPS)

2. **Install Nginx, MySQL, PHP**
   - `sudo apt update`
   - `sudo apt install -y nginx mysql-server php-fpm php-mysql php-xml php-gd php-mbstring php-curl unzip`

3. **Configure MySQL**
   - Set root password
   - Create database `wp_carz`
   - Create user `wpuser` with a strong password
   - Grant privileges

4. **Install WordPress**
   - Download WordPress to `/var/www/carzinfoforallz.online`
   - Set file permissions for `www-data`

5. **Configure Nginx**
   - Create server block for `carzinfoforallz.online`
   - Point `root` to `/var/www/carzinfoforallz.online`
   - Enable PHP-FPM
   - Test with `sudo nginx -t` and restart Nginx

6. **DNS**
   - On Namecheap: set A records for `@` and `www` pointing to the EC2 public IP

7. **SSL/TLS**
   - Install Certbot
   - Run `sudo certbot --nginx -d carzinfoforallz.online -d www.carzinfoforallz.online`

8. **Node Script**
   - Install Node.js 18
   - Place `car-data-api.js` in `~/car-scripts/`
   - Run `node car-data-api.js civic`

More detail is provided in the separate documentation files in this repository.

---

## Repository Contents

- `README.md` – overall project summary and rebuild steps  
- `dns-config.md` – DNS configuration and explanation  
- `ssl-documentation.md` – SSL/TLS setup notes and commands  
- `nginx-config.txt` – Nginx server block used on the server  
- `timeline.md` – short development timeline  
- `script/car-data-api.js` – Node.js car data script  
- `script/README.md` – explains the script and how to run it  
- `screenshots/` – evidence: server, DNS, SSL, WordPress, script, GitHub views  

---

## Video Explainer

A short (3–5 minute) video demonstrates:

- The running EC2 instance  
- WordPress website at https://carzinfoforallz.online  
- HTTPS padlock / site info  
- The terminal showing the Node.js script output  
- This GitHub repository  

(Video link will be placed here once recorded.)

