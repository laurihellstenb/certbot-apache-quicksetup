#!/bin/bash

echo "Input ServerName:"
read SERVERNAME
sudo apt-get update
sudo ufw allow 'Apache Full'
sudo ufw delete allow 'Apache'
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get install -y python-certbot-apache
sudo certbot --apache -d ${SERVERNAME} -d www.${SERVERNAME}
sudo certbot renew --dry-run

