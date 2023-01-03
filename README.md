# sign-tls

# Apply for a TLS certificate
1. First resolve the node domain name to the node server, and you can ping it

```
# use must read
# Please resolve the node domain name to the node before use, and it can be pinged
# Please replace domain.com in the command with the node domain name
curl -fsSL https://github.com/Github-Aiko/sign-tls/raw/master/sign.sh | bash -s domain.com
```

or 

```
bash <(curl -ls https://github.com/Github-Aiko/sign-tls/raw/master/install.sh)
```
2. After the application is completed, the certificate will be saved to /root/.cert/server.crt /root/.cert/server.key

# Note 
- Free port 80 will be used to apply for a certificate and will be released after the application is completed
- The certificate is valid for 90 days, and the certificate will be automatically renewed 30 days before the expiration date
- you need set the domain name to the node server ip before use it