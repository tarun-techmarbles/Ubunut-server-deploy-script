#!/bin/bash
# Update
sudo apt-get update

# Install cURL & ZIP/UNZIP
sudo apt-get install curl
sudo apt-get install zip unzip

# Install Apache
sudo apt-get install apache2
# Y to allow to use disk space
echo "Apache Installed Successfully!"

# Check Firewall Configurations
echo "Your firewall configuration is."
sudo ufw app list
sudo ufw app info "Apache Full"
sudo ufw allow in "Apache Full"
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443

# Install MySQL Server
sudo apt-get install mysql-server
# Y to allow to use disk space

sudo mysql_secure_installation
# This asks you if you want to enable secured password for your server.
# Press y|Y, if you want to allow VALIDATE PASSWORD PLUGIN to be used.
# If you select Yes, then it will ask you for password strength
# And to reset password if required (Sample Secure Password : Haksfuh@sfeGa23VhP3)

echo "MySQL Server Installed Successfully!"

# Install PHP
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
# Y to allow to use disk space
sudo apt-get install php-cli php-mbstring php-gettext php-curl
sudo phpenmod curl

sudo a2enmod rewrite
sudo apt install php7.0-dev
echo "php7.0-dev Installed Successfully!"

sudo apt-get install php7.0-intl
echo "php7.0-intl Installed Successfully!"
sudo service apache2 restart