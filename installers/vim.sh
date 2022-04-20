source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Vim"

pblue "Installing vim gui"
sudo apt-get install vim-gui-common -y >> "$LOG_DIR.dotfiles.log"
pgreen "vim gui installed\n"

pblue "Installing vim runtime"
sudo apt-get install vim-runtime -y >> "$LOG_DIR.dotfiles.log"
pgreen "vim runtime installed\n"