# DNS Configuration – carzinfoforallz.online

**Domain Registrar:** Namecheap  
**Domain:** carzinfoforallz.online  

DNS records:

- **A record**
  - Host: `@`
  - Value: `13.203.229.130`
  - Purpose: Root domain → EC2 server IP

- **A record**
  - Host: `www`
  - Value: `13.203.229.130`
  - Purpose: www subdomain → EC2 server IP

These records ensure that both:

- `http://carzinfoforallz.online`
- `http://www.carzinfoforallz.online`

resolve to the cloud server.

**Evidence:**

Screenshot: <img width="1192" height="544" alt="image" src="https://github.com/user-attachments/assets/eec53e7a-64c8-4d6f-9f07-2932321b20d9" />


Check from local terminal:
`dig +short carzinfoforallz.online`  # expect: 13.203.229.130
