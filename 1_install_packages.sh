apt update

# Install Packages
apt install net-tools gnome-tweak-tool iotop htop ntp git locate bash-completion vim bzip2 zip gzip terminator vlc chromium-browser meld virtualbox filezilla
# ctrl+alt+t ouvrira Terminator correctement et pas en root @see https://bugs.launchpad.net/terminator/+bug/1447580
gsettings set org.gnome.desktop.default-applications.terminal exec 'terminator'

apt install apache2 libapache2-mod-php apache2-utils 
apt install mariadb-client mariadb-server 
apt install php php-mysql php-curl php-bz2 php-gd php-zip php-xml php-xdebug
apt install phpmyadmin
apt install openssh-server fail2ban

service apache2 restart

#curl -sSf https://static.rust-lang.org/rustup.sh | sh
#cargo install ripgrep

# Menu principal : permet de gérer les lanceurs et leurs icones
#apt-get install alacarte


#apt install shutter
## Ré-activer l'option "éditer" de shutter
#mkdir /tmp/libgoo-canvas-perl && cd /tmp/libgoo-canvas-perl
#wget http://archive.ubuntu.com/ubuntu/pool/universe/libg/libgoo-canvas-perl/libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb
#wget http://archive.ubuntu.com/ubuntu/pool/universe/libe/libextutils-depends-perl/libextutils-depends-perl_0.405-1_all.deb
#wget http://archive.ubuntu.com/ubuntu/pool/universe/libe/libextutils-pkgconfig-perl/libextutils-pkgconfig-perl_1.15-1_all.deb
#wget http://archive.ubuntu.com/ubuntu/pool/universe/g/goocanvas/libgoocanvas3_1.0.0-1_amd64.deb
#wget http://archive.ubuntu.com/ubuntu/pool/universe/g/goocanvas/libgoocanvas-common_1.0.0-1_all.deb
#sudo dpkg -i *.deb
#sudo apt install -f
#cd /tmp
#rm -rf /tmp/libgoo-canvas-perl

# alternative à shutter
cd /tmp
wget https://github.com/DamirPorobic/ksnip/releases/download/v1.5.0/ksnip-1.5.0.deb
sudo dpkg -i ksnip-1.5.0.deb
sudo apt install -f
rm ksnip-1.5.0.deb
