set -e

source "$(dirname "$0")/utils/functions.sh"
source "$(dirname "$0")/utils/vars.sh"

infoh1 "cURL"

pinfo "Installing cURL"
sudo apt install curl
psuccess "cURL installed"

# Snaps
infoh1 "Snaps"
echo "Let's remove snaps now :)"
echo -e "Below is list of snaps:\n"
snap list
echo -e "\n"
pinfo "Removing possible snaps..."

pinfo "Removing firefox"
sudo snap remove --purge firefox
psuccess "firefox removed"

pinfo "Removing gnome-3-38-2004"
sudo snap remove --purge gnome-3-38-2004
psuccess "gnome-3-38-2004 removed"

pinfo "Removing snapd-desktop-integration"
sudo snap remove --purge snapd-desktop-integration
psuccess "snapd-desktop-integration removed"

pinfo "Removing snap-store"
sudo snap remove --purge snap-store
psuccess "snap-store removed"

pinfo "Removing gtk-common-themes"
sudo snap remove --purge gtk-common-themes
psuccess "gtk-common-themes removed"

pinfo "Removing bare"
sudo snap remove --purge bare
psuccess "bare removed"

pinfo "Removing core20"
sudo snap remove --purge core20
psuccess "core20 removed"

pinfo "Removing snapd"
sudo snap remove --purge snapd
psuccess "snapd removed"

pinfo "Remaining snaps:"
snap list
echo -e "\n"
pinfo 'Remove listed snaps using "sudo snap remove --purge <package-name>" in separate tab'
echo 'Press key when done removing all snaps'
read wait_for_keypress

pinfo "Removing snap related stuff..."
sudo rm -rf /var/cache/snapd/
sudo apt autoremove --purge snapd gnome-software-plugin-snap -y
rm -fr ~/snap
sudo apt-mark hold snapd
psuccess "Snaps cleaned from the system"

# Install applications in order
/bin/bash "$(dirname "$0")/installers/chrome.sh"
/bin/bash "$(dirname "$0")/installers/slack.sh"
/bin/bash "$(dirname "$0")/installers/gnome-tweaks.sh"
/bin/bash "$(dirname "$0")/installers/nvm.sh"
/bin/bash "$(dirname "$0")/installers/yarn.sh"
/bin/bash "$(dirname "$0")/installers/vscode.sh"
/bin/bash "$(dirname "$0")/installers/dconf.sh"