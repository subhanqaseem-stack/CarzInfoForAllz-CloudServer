# Development Timeline – CarzInfoForAllz

- **Week 1**
  - Launched AWS EC2 Ubuntu instance.
  - Configured security group (SSH, HTTP, HTTPS).
  - Connected via SSH using the PEM key.

- **Week 2**
  - Installed Nginx, MySQL and PHP.
  - Fixed MySQL root user access and created the `wp_carz` database and `wpuser`.
  - Downloaded and configured WordPress under `/var/www/carzinfoforallz.online`.
  - Configured Nginx server block for the domain.

- **Week 3**
  - Pointed Namecheap A records to the EC2 public IP.
  - Installed Certbot and enabled HTTPS for `carzinfoforallz.online` and `www.carzinfoforallz.online`.
  - Confirmed that HTTP redirected to HTTPS and that the certificate was valid.

- **Week 4**
  - Installed Node.js 18.
  - Created `car-data-api.js` script to print sample car information in the terminal.
  - Captured screenshots (server, DNS, SSL, WordPress, script output).

- **Week 5**
  - Designed WordPress pages (Home, Car Types, Buying Guides, Maintenance & Safety, About).
  - Finished GitHub documentation and uploaded screenshots.
  - Prepared notes for the video explainer.

