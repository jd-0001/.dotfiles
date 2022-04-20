source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "debi"

pblue "Installing debi..."
sudo apt-get install gdebi -y >> "$LOG_DIR.dotfiles.log"
pgreen "debi installed\n"