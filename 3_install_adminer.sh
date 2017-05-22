#
# Install adminer (source : https://www.leaseweb.com/labs/2014/06/install-adminer-manually-ubuntu-14-04/)
#
mkdir /usr/share/adminer
wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php
echo "Alias /adminer /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf
a2enconf adminer.conf
service apache2 restart

#
# Update adminer (source : https://www.leaseweb.com/labs/2014/06/install-adminer-manually-ubuntu-14-04/)
#
# wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
#

#
# Uninstall adminer (source : https://www.leaseweb.com/labs/2014/06/install-adminer-manually-ubuntu-14-04/)
#
# a2disconf adminer.conf
# service apache2 restart
# rm /etc/apache2/conf-available/adminer.conf
# rm -Rf /usr/share/adminer
