source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Mega"

pblue "It assumes you are using ubuntu. Press any key to continue."
wait_for_keypress

ubuntu_version=$(lsb_release -r | grep -oP "[\d\.]+")

# Download mega
pblue "Downloading megasync & nautils integration from available files..."
echo "Press any key once both downloads are done"
echo -e "https://mega.nz/linux/repo/xUbuntu_$ubuntu_version/amd64/"
pblue "Opening browser in 3 seconds..."
sleep 3
google-chrome "https://mega.nz/linux/repo/xUbuntu_$ubuntu_version/amd64/" > /dev/null 2>&1 &
wait_for_keypress

# Install mega
pblue "Installing mega sync now..."
# sudo gdebi /tmp/megasync*.deb >> "$LOG_DIR.dotfiles.log"
sudo gdebi /tmp/megasync*.deb
pgreen "mega sync installed\n"

# WIP
# Install gdebi