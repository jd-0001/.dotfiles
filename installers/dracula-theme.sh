source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Dracula"

pblue "Installing dracula theme for vim..."
mkdir -p ~/.vim/pack/themes/start
cd ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula
pgreen "Dracula theme installed\n"

pblue "Installing dracula theme for gnome terminal..."
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh
pgreen "Dracula theme installed\n"