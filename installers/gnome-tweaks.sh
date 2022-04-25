source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Gnome Tweaks"

pblue "Installing gnome tweaks..."
sudo apt-get install gnome-tweaks -y >> "$LOG_DIR.dotfiles.log"
pgreen "gnome-tweaks installed successfully"

echo -e "\n\n"