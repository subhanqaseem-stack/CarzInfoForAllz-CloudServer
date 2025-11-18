#!/bin/bash
set -e

# EDIT THESE BEFORE RUNNING
DB_ROOT_PASS="ChangeMeRoot!2025"
DB_NAME="wp_carz"
DB_USER="wpuser"
DB_PASS="ChangeMeDB!2025"
DOMAIN="carzinfoforallz.online"

# Update system
sudo apt update && sudo apt upgrade -y

# Install LEMP components
sudo apt install -y nginx mysql-server php-fpm php-mysql unzip curl

# Secure MySQL root (simple approach)
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '${DB_ROOT_PASS}'; FLUSH PRIVILEGES;"

# Create DB and user for WordPress
sudo mysql -e "CREATE DATABASE ${DB_NAME} DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
sudo mysql -e "CREATE USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASS}';"
sudo mysql -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'localhost'; FLUSH PRIVILEGES;"

# Download and deploy WordPress
cd /tmp
curl -O https://wordpress.org/latest.zip
unzip -o latest.zip

sudo mkdir -p /var/www/${DOMAIN}
sudo rsync -av wordpress/ /var/www/${DOMAIN}/
sudo chown -R www-data:www-data /var/www/${DOMAIN}
sudo chmod -R 755 /var/www/${DOMAIN}

# Configure wp-config
sudo cp /var/www/${DOMAIN}/wp-config-sample.php /var/www/${DOMAIN}/wp-config.php
sudo sed -i "s/database_name_here/${DB_NAME}/" /var/www/${DOMAIN}/wp-config.php
sudo sed -i "s/username_here/${DB_USER}/" /var/www/${DOMAIN}/wp-config.php
sudo sed -i "s/password_here/${DB_PASS}/" /var/www/${DOMAIN}/wp-config.php

# Place nginx config
sudo tee /etc/nginx/sites-available/${DOMAIN} > /dev/null <<'NGINX'
server {
    listen 80;
    server_name carzinfoforallz.online www.carzinfoforallz.online;

    root /var/www/carzinfoforallz.online;
    index index.php index.html index.htm;

    location / {
        try_files $uri $uri/ /index.php?$args;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php-fpm.sock;
    }

    location ~ /\.ht {
        deny all;
    }
}
NGINX

# Enable site and restart nginx
sudo ln -sf /etc/nginx/sites-available/${DOMAIN} /etc/nginx/sites-enabled/${DOMAIN}
sudo nginx -t
sudo systemctl restart nginx

echo "Installation complete. Visit http://${DOMAIN} or the server IP to finish WordPress setup."
