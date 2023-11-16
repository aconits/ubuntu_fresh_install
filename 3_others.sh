echo "vm.swappiness=5" | sudo tee -a /etc/sysctl.conf

# Accélérer le démarrage de certains programmes, dont LibreOffice
echo 127.0.0.1 $HOSTNAME localhost $HOSTNAME"(.none)" | sudo tee -a /etc/hosts

# Update de l'éditeur par défaut (choix à faire)
update-alternatives --config editor


echo "---- Init .bash_aliases et .gitconfig dans [~/] ----"
cd /tmp
git clone https://github.com/aconits/git_configuration.git gitc
cp gitc/.bash_aliases ~/
cp gitc/.gitconfig ~/
sed -i -e 's/\s*delete-branch.*//g' ~/.gitconfig # Retait d'un raccourci un peu trop dangereux
chown $SUDO_USER:$SUDO_USER ~/.bash_aliases
chown $SUDO_USER:$SUDO_USER ~/.gitconfig
rm -r gitc
echo "Attention : le fichier /home/$SUDO_USER/.gitconfig doit être modifié pour renseigner le user"
read -p "Appuyer sur une touche pour continuer..." letsgo
