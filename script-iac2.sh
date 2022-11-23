#!/bin/bash

echo "Script de provisionamento de um servidor..."

echo "Atualizando sistema..."

apt-get update
apt-get upgrade -y

echo "Instalando apache2..."

apt-get install apache2 -y

echo "Instalando unzip..."

apt-get install unzip -y

echo "Baixando aplicação e extraindo arquivo."

cd /tmp wget 
https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip

cd /main.zip/linux-site-dio-main

echo "Copiando para Apache2"

cp -R * /var/www/html/
