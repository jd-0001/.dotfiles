source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "nginx"

pblue "Installing nginx\n"
sudo apt-get install nginx -y >> "$LOG_DIR.dotfiles.log"

pblue "Opening ports\n"
sudo ufw allow 80/tcp >> "$LOG_DIR.dotfiles.log"
sudo ufw allow 43/tcp >> "$LOG_DIR.dotfiles.log"

pgreen "nginx installed\n"