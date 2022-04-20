set -e

source "$(dirname "$0")/utils/functions.sh"
source "$(dirname "$0")/utils/vars.sh"

# Snaps
# infoh1 "Snaps"
# echo "Let's remove snaps now :)"
# echo -e "Below is list of snaps:\n"
# snap list
# echo -e "\n"
# pblue "Removing possible snaps..."

# pblue "Removing firefox"
# sudo snap remove --purge firefox >> "$LOG_DIR.dotfiles.log"
# pgreen "firefox removed\n"

# pblue "Removing gnome-3-38-2004"
# sudo snap remove --purge gnome-3-38-2004 >> "$LOG_DIR.dotfiles.log"
# pgreen "gnome-3-38-2004 removed\n"

# pblue "Removing snapd-desktop-integration"
# sudo snap remove --purge snapd-desktop-integration >> "$LOG_DIR.dotfiles.log"
# pgreen "snapd-desktop-integration removed\n"

# pblue "Removing snap-store"
# sudo snap remove --purge snap-store >> "$LOG_DIR.dotfiles.log"
# pgreen "snap-store removed\n"

# pblue "Removing gtk-common-themes"
# sudo snap remove --purge gtk-common-themes >> "$LOG_DIR.dotfiles.log"
# pgreen "gtk-common-themes removed\n"

# pblue "Removing bare"
# sudo snap remove --purge bare >> "$LOG_DIR.dotfiles.log"
# pgreen "bare removed\n"

# pblue "Removing core20"
# sudo snap remove --purge core20 >> "$LOG_DIR.dotfiles.log"
# pgreen "core20 removed\n"

# pblue "Removing snapd"
# sudo snap remove --purge snapd >> "$LOG_DIR.dotfiles.log"
# pgreen "snapd removed\n"

# pblue "Remaining snaps:"
# snap list
# echo -e "\n"
# pblue 'Remove listed snaps using "sudo snap remove --purge <package-name>" in separate tab'
# echo 'Press key when done removing all snaps'
# read wait_for_keypress

# pblue "Removing snap related stuff..."
# sudo rm -rf /var/cache/snapd/ >> "$LOG_DIR.dotfiles.log"
# sudo apt autoremove --purge snapd gnome-software-plugin-snap -y >> "$LOG_DIR.dotfiles.log"
# rm -fr ~/snap
# sudo apt-mark hold snapd >> "$LOG_DIR.dotfiles.log"
# pgreen "Snaps cleaned from the system\n"

# # Install applications in order
/bin/bash "$(dirname "$0")/installers/gdebi.sh"
# /bin/bash "$(dirname "$0")/installers/curl.sh"
# /bin/bash "$(dirname "$0")/installers/chrome.sh"
/bin/bash "$(dirname "$0")/installers/mega.sh"
# /bin/bash "$(dirname "$0")/installers/slack.sh"
# /bin/bash "$(dirname "$0")/installers/gnome-tweaks.sh"
# /bin/bash "$(dirname "$0")/installers/node_eco.sh"
# /bin/bash "$(dirname "$0")/installers/vscode.sh"
# /bin/bash "$(dirname "$0")/installers/dconf.sh"
# /bin/bash "$(dirname "$0")/installers/xclip.sh"
# /bin/bash "$(dirname "$0")/installers/poetry.sh"
# /bin/bash "$(dirname "$0")/installers/pyenv.sh"
# /bin/bash "$(dirname "$0")/installers/secret-tool.sh"
# /bin/bash "$(dirname "$0")/installers/xonsh.sh"

# symlinks
# /bin/bash "$(dirname "$0")/link.sh"

# credentails
# /bin/bash "$(dirname "$0")/credentials.sh"

# configure gnome
# /bin/bash "$(dirname "$0")/distro/ubuntu.sh"

# Rachana
# /bin/bash "$(dirname "$0")/rachana.sh"

echo -e "\n"

pgreen "You are ready to rock!"

# https://askubuntu.com/questions/907425/how-do-i-back-up-and-restore-passwords-and-keys