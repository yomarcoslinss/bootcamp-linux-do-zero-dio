echo "Atualizações"

sudo apt-get update && apt-get upgrade -y

echo "Instalações"

sudo apt-get apache2 -y
sudo apt-get unzip -y

echo "Alterando arquivos"

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos"
sudo unzip main.zip


echo "Movendo para o Apache"
  
cd linux-site-dio-main

cp -R * /var/www/html
