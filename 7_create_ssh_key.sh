while :
do
    read -r -p "Sasir l'adresse email pour la clé SSH : " email
    read -r -p "Confirmez [$email] (y/n/q)" confirm
    
    case $confirm in
      y) ssh-keygen -t rsa -b 4096 -C "$email";
         break;
         ;;
      n) continue ;;
      q) break ;;
    esac
done
