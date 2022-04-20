source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Mega"

pblue "It assumes you are using ubuntu. Press any key to continue."
wait_for_keypress

ubuntu_version=$(lsb_release -r | grep -oP "[\d\.]+")

# Download mega
pblue "Downloade megasync from https://mega.nz/linux/repo/xUbuntu_$ubuntu_version/amd64/"
echo "Press any key once download is done"
pblue "Opening browser in 3 seconds..."
sleep 3
google-chrome "https://mega.nz/linux/repo/xUbuntu_$ubuntu_version/amd64/" > /dev/null 2>&1 &
wait_for_keypress

# Install mega
pblue "Installing mega sync now..."
sudo gdebi -n /tmp/megasync*.deb >> "$LOG_DIR.dotfiles.log"
pgreen "mega sync installed\n"

# Login mega
pblue "Login to mega. Press any key to continue."
wait_for_keypress

# Symlink files & dirs
pblue "Symlinking files & dirs..."

sudo ln -s ~/MEGAsync/.dotfiles/\$HOME/.git-credentials ~
pgreen ".git-credentials symlinked"
sudo ln -s ~/MEGAsync/.dotfiles/\$HOME/.ssh ~
pgreen ".ssh dir symlinked"
