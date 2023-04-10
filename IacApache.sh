#!/bin/bash

apt install apache2 -y
apt install unzip -y
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp -R linux-site-dio-main/* /var/www/html/
rm -rf linux-site-dio-main
rm -f main.zip 