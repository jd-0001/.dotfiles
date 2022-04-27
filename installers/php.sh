source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "php"

pblue "Installing php\n"
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php8.1 
sudo apt-get update 
sudo apt install php8.1 -y

# php fpm
sudo apt install php8.1-fpm >> "$LOG_DIR.dotfiles.log"


pgreen "php installed\n"
pblue 'You can check the service status using "sudo systemctl status php8.1-fpm"'
pblue "You can find sample nginx config in assets/nginx-php"

echo -e "\n\n"