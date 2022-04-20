source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Vim"

pblue "Installing vim gui"
sudo apt-get install vim-gui-common -y >> "$LOG_DIR.dotfiles.log"
pgreen "vim gui installed\n"

pblue "Installing vim runtime"
sudo apt-get install vim-runtime -y >> "$LOG_DIR.dotfiles.log"
pgreen "vim runtime installed\n"

pblue "Installing nginx plugin"
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
git clone https://github.com/chr4/nginx.vim.git
pgreen "Nginx plugin installation processed\n"