source "$(dirname "$0")/utils/functions.sh"
source "$(dirname "$0")/utils/vars.sh"

dotfiles_cred_dir="/tmp/.dotfiles"

infoh1 "Credentials"

pblue "Now, we need zip \"dotfiles*.zip\" in /tmp dir and all files that should be placed in \$HOME dir should be in \"/tmp/.dotfiles/\$HOME\" dir"

pblue "Download your .dotfiles zip that contains your credentials files and make sure it's in /tmp dir"
wait_for_keypress

pblue "Unzipping files..."
unzip /tmp/dotfiles*.zip -d /tmp

HOME_files="$dotfiles_cred_dir/\$HOME"
pblue "Copying files from $HOME_files"
if [[ -d $HOME_files ]]; then
    cp -r $HOME_files/. ~
else
    echo -e "Directory doesn't exist: $HOME_files"
fi