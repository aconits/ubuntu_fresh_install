apt update

# Install Packages
apt install net-tools gnome-tweak-tool iotop htop ntp git locate bash-completion vim bzip2 zip gzip terminator vlc shutter chromium-browser meld virtualbox filezilla
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
