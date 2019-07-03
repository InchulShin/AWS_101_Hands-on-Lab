#!/bin/bash

# copy all files used for web service to newly mounted directory 
sudo mv /var/www/html/* /mount_1g

# change Apache home directory to newly mounted directory
sudo sed -i 's/DocumentRoot \"\/var\/www\/html\"/DocumentRoot \"\/mount_1g\"/g' /etc/httpd/conf/httpd.conf
sudo sed -i 's/Directory \"\/var\/www\/html\"/Directory \"\/mount_1g\"/g' /etc/httpd/conf/httpd.conf
sudo sed -i 's/Directory \"\/var\/www\"/Directory \"\/mount_1g\"/g' /etc/httpd/conf/httpd.conf

# restart Apache daemon to apply changes
sudo service httpd restart
