source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Mega"

# pblue "It assumes you are using ubuntu. Press any key to continue."
# wait_for_keypress

# ubuntu_version=$(lsb_release -r | grep -oP "[\d\.]+")

# Download mega
# pblue "Downloade megasync from https://mega.nz/linux/repo/xUbuntu_$ubuntu_version/amd64/"
# echo "Press any key once download is done"
# pblue "Opening browser in 3 seconds..."
# sleep 3
# google-chrome "https://mega.nz/linux/repo/xUbuntu_$ubuntu_version/amd64/" > /dev/null 2>&1 &
# wait_for_keypress

# Install mega
# pblue "Installing mega sync now..."
# sudo gdebi -n /tmp/megasync*.deb >> "$LOG_DIR.dotfiles.log"
# pgreen "mega sync installed\n"

# Login mega
# pblue "Login to mega and remove ignore pattern \".*\" from megasync settings. Press any key to continue."
# pblue "Opening megasync in 3 seconds..."
# sleep 3
# megasync > /dev/null 2>&1 &
# wait_for_keypress

# ==== Permissions ===============

chown --recursive $USER:$USER ~/.ssh
chmod 755 ~/.ssh
# chmod 644 ~/.ssh/known_hosts
# chmod 644 ~/.ssh/authorized_keys
chmod 600 ~/.ssh/config
chmod 600 ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa.pub
# repeat the last two for other public/private pairs
# you may need to "service ssh restart" after changing these values

chown --recursive $USER:$USER ~/.gnupg
chmod 700 ~/.gnupg
chmod 600 ~/.gnupg/*
# for any subfolders, you need to apply 700 to the folder
# and 600 to the files in that subfolder:
# chmod 700 ~/.gnupg/subfolder
# chmod 600 ~/.gnupg/subfolder/*

# ==== / Permissions ===============

# Symlink files & dirs
pblue "Symlinking files & dirs..."

ln -sf ~/MEGAsync/.dotfiles/\$HOME/.git-credentials ~
pgreen ".git-credentials symlinked"

ln -sfn ~/MEGAsync/.dotfiles/\$HOME/.ssh ~
pgreen ".ssh dir symlinked"

ln -sfn ~/MEGAsync/.dotfiles/\$HOME/.gnupg ~
pgreen ".gnupg dir symlinked"

# Create dir if doesn't exist for keyrings
mkdir -p ~/.local/share/
ln -sfn ~/MEGAsync/.dotfiles/keyrings ~/.local/share/keyrings
pgreen "keyrings dir symlinked"