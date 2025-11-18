# Carzinfoforallz Cloud Server Project

**Student:** Subhan Qaseem  
**Student ID:** 35313546

**Domain:** https://carzinfoforallz.online  
**Public IP:** 13.203.229.130

## Project description
CarzInForAllz is a comprehensive automotive information website designed to assist individuals in making well-informed vehicle purchasing decisions. The platform delivers accurate and practical automotive knowledge tailored for first-time buyers, general consumers, and automobile enthusiasts. Acting as a central hub for reliable automotive content, CarzInForAllz provides detailed vehicle reviews, maintenance guides, and educational articles that simplify complex car information for all users.

The purpose of CarzInForAllz is to bridge the knowledge gap between car buyers and the automotive market by offering unbiased insights into vehicle performance, affordability, and reliability. The website includes informative guides on car components, safety features, and maintenance practices, allowing users with limited technical knowledge to understand essential vehicle details. By presenting content in a clear, structured, and engaging format, CarzInForAllz promotes transparency and credibility while encouraging confident decision-making.

The platform caters to a wide audience—ranging from novice drivers exploring affordable options to enthusiasts interested in luxury and high-performance vehicles. It aims to provide timely updates on automotive innovations, market trends, and new technologies shaping the industry. CarzInForAllz aspires to become a trusted digital resource within the automotive community by combining accuracy, accessibility, and ease of navigation.

Ultimately, CarzInForAllz seeks to empower users through knowledge. By organising and presenting reliable information effectively, the platform helps consumers select vehicles that align with their preferences and budgets. Through its educational and user-focused approach, the platform helps to build a more informed, responsible and confident community of car buyers and enthusiasts.

---

## Repo structure
- `installation-script.sh` — install LEMP + WordPress (edit passwords before running)
- `nginx-config.txt` — Nginx server block
- `dns-config.md` — DNS settings & screenshot
- `ssl-documentation.md` — Certbot commands & evidence
- `timeline.md` — development timeline
- `script/` — `car-data-api.js` and `README.md`
- `screenshots/` — evidence images (upload here)

## How to rebuild (short)
1. Launch Ubuntu EC2, open ports 22/80/443 in Security Group.  
2. SSH in and upload `installation-script.sh`. Edit passwords.  
3. Run `sudo bash installation-script.sh`.  
4. Finish WordPress via browser.  
5. Run Certbot for HTTPS.  
6. Run `node` script to verify script output.

## Video
Add YouTube (unlisted) link here after recording.

