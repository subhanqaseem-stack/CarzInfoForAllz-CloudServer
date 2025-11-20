# SSL / TLS Documentation

**Certificate Provider:** Let’s Encrypt  
**Tool:** Certbot (with Nginx plugin)

## Commands Used

```bash
sudo apt update
sudo apt install -y certbot python3-certbot-nginx
sudo certbot --nginx -d carzinfoforallz.online -d www.carzinfoforallz.online
