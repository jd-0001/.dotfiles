source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "vim"

pblue "Installing dracula theme..."
mkdir -p ~/.vim/pack/themes/start
cd ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula
pgreen "Dracula theme installed\n"

