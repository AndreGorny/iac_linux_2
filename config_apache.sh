#!/bin/bash

echo "Atualizando o sistema..."

apt-get update
apt-get upgrade -y

echo "Instalando softwares..."

apt-get install apache2 -y

apt-get install unzip -y

echo "Baixando a aplicação e copiando os arquivos..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html

echo "Configuração realizada com sucesso!"
