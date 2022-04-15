source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "xclip"

pblue "Installing xclip..."
sudo apt-get install xclip -y >> "$LOG_DIR.dotfiles.log"
pgreen "xclip installed\n"