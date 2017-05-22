apt-get remove -y rhythmbox rhythmbox-data rhythmbox-mozilla rhythmbox-plugin-cdrecorder rhythmbox-plugin-magnatune rhythmbox-plugin-zeitgeist rhythmbox-plugins
apt-get remove -y thunderbird thunderbird-gnome-support

# Le bluetooth n'est pas présent sur toutes les machines, surtout les PC fixes. On le désactive.
update-rc.d -f bluetooth remove && sudo apt-get remove -y blueman bluez bluez-alsa bluez-cups

# désactiver Orca, un lecteur d'écran pour utilisateur mal-voyant
sudo apt-get remove gnome-orca -y
