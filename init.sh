set -e

source "$(dirname "$0")/utils/functions.sh"
source "$(dirname "$0")/utils/vars.sh"

infoh1 "cURL"

pblue "Installing cURL"
sudo apt install curl
pgreen "cURL installed"

# Snaps
infoh1 "Snaps"
echo "Let's remove snaps now :)"
echo -e "Below is list of snaps:\n"
snap list
echo -e "\n"
pblue "Removing possible snaps..."

pblue "Removing firefox"
sudo snap remove --purge firefox
pgreen "firefox removed"

pblue "Removing gnome-3-38-2004"
sudo snap remove --purge gnome-3-38-2004
pgreen "gnome-3-38-2004 removed"

pblue "Removing snapd-desktop-integration"
sudo snap remove --purge snapd-desktop-integration
pgreen "snapd-desktop-integration removed"

pblue "Removing snap-store"
sudo snap remove --purge snap-store
pgreen "snap-store removed"

pblue "Removing gtk-common-themes"
sudo snap remove --purge gtk-common-themes
pgreen "gtk-common-themes removed"

pblue "Removing bare"
sudo snap remove --purge bare
pgreen "bare removed"

pblue "Removing core20"
sudo snap remove --purge core20
pgreen "core20 removed"

pblue "Removing snapd"
sudo snap remove --purge snapd
pgreen "snapd removed"

pblue "Remaining snaps:"
snap list
echo -e "\n"
pblue 'Remove listed snaps using "sudo snap remove --purge <package-name>" in separate tab'
echo 'Press key when done removing all snaps'
read wait_for_keypress

pblue "Removing snap related stuff..."
sudo rm -rf /var/cache/snapd/
sudo apt autoremove --purge snapd gnome-software-plugin-snap -y
rm -fr ~/snap
sudo apt-mark hold snapd
pgreen "Snaps cleaned from the system"

# Install applications in order
/bin/bash "$(dirname "$0")/installers/chrome.sh"
/bin/bash "$(dirname "$0")/installers/slack.sh"
/bin/bash "$(dirname "$0")/installers/gnome-tweaks.sh"
/bin/bash "$(dirname "$0")/installers/nvm.sh"
/bin/bash "$(dirname "$0")/installers/yarn.sh"
/bin/bash "$(dirname "$0")/installers/vscode.sh"
/bin/bash "$(dirname "$0")/installers/dconf.sh"