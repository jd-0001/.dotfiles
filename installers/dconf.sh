source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "dconf"

pblue "Installing dconf..."
sudo apt install dconf-editor >> "$LOG_DIR.dotfiles.log"