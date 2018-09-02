#!/bin/sh
sslemail=s@projectoblio.com;
domain=distribution.projectoblio.com;
#printf "\n server_name $domain >> /etc/nginx/sites-available/default \n"
apt-get install software-properties-common -y --allow-unauthenticated; 
add-apt-repository ppa:certbot/certbot -y; 
apt-get update
apt-get install python-certbot-nginx -y --allow-unauthenticated; 
certbot --nginx --non-interactive --agree-tos -d $domain --email $sslemail; 
certbot renew --dry-run; 
