source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "cURL"

pblue "Installing cURL"
sudo apt-get install curl >> "$LOG_DIR.dotfiles.log"
pgreen "cURL installed\n"

echo -e "\n\n"
