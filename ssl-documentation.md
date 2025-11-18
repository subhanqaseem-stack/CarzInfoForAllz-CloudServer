# SSL/TLS documentation

Commands to install certbot and obtain certificate:
- sudo apt update
- sudo apt install -y certbot python3-certbot-nginx
- sudo certbot --nginx -d carzinfoforallz.online -d www.carzinfoforallz.online

Add screenshots:
- `screenshots/certbot-output.png`
- `screenshots/site-https.png`

Test renewal:
- sudo certbot renew --dry-run
