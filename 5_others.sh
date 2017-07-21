echo "vm.swappiness=5" | sudo tee -a /etc/sysctl.conf

# Accélérer le démarrage de certains programmes, dont LibreOffice
echo 127.0.0.1 $HOSTNAME localhost $HOSTNAME"(.none)" | sudo tee -a /etc/hosts

# Update de l'éditeur par défaut (choix à faire)
update-alternatives --config editor
