source "$(dirname "$0")/utils/functions.sh"
source "$(dirname "$0")/utils/vars.sh"

infoh1 "Symlinks"

# You can also use relative path
LINKS_DIR="$(dirname "$0")/links/"

sudo ln -s $(realpath $LINKS_DIR)/.bash_aliases ~
sudo ln -s $(realpath $LINKS_DIR)/.xonshrc ~
sudo ln -s $(realpath $LINKS_DIR)/.gitconfig ~
sudo ln -s $(realpath $LINKS_DIR)/.vimrc ~

# Fill attendance script
sudo ln -s $(realpath $LINKS_DIR)/gnome-terminal.desktop ~/.config/autostart

pgreen "Symlinks done"

echo -e "\n\n"