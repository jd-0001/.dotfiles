source "$(dirname "$0")/functions.sh"
source "$(dirname "$0")/vars.sh"

# You can also use relative path
LINKS_DIR="$(dirname "$0")/links/"

sudo ln -s $(realpath $LINKS_DIR)/.bash_aliases ~
sudo ln -s $(realpath $LINKS_DIR)/.gitconfig ~
sudo ln -s $(realpath $LINKS_DIR)/.vimrc ~