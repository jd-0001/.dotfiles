source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "xonsh"

source ~/.profile
source ~/.bashrc

pblue "Installing python dev dependencies..."
sudo apt-get install make build-essential libssl-dev zlib1g-dev libreadline-dev libbz2-dev libsqlite3-dev wget curl llvm libncurses5-dev python3-dev -y >> "$LOG_DIR.dotfiles.log"
pgreen "Done!\n"

pblue "Installing pip..."
sudo apt-get install python3-pip -y >> "$LOG_DIR.dotfiles.log"
pgreen "pip installed\n"

pblue "Creating virtualenv for xonsh using pyenv & poetry..."
mkdir ~/.xonsh
cd ~/.xonsh

pblue "Enter the python version to use for xonsh (e.g. 3.10.4):"
read pyversion
pblue "Using python version: $pyversion"
echo -e "\n"

pblue "Installing selected python version"
pyenv install $pyversion >> "$LOG_DIR.dotfiles.log"
pgreen "Done!\n"

pblue "Setting pyenv to use selected python version"
pyenv local $pyversion
pgreen "Done!\n"

pblue "Running poetry init..."
poetry init
pgreen "poetry added\n"

pblue "Adding xonsh to the virtualenv..."
poetry add 'xonsh[full]'  >> "$LOG_DIR.dotfiles.log"

pblue "Activate poetry virtual env"
source $(poetry env info -p)/bin/activate
pgreen "poetry virtual env activated\n"

pblue "Checking xonsh"
which xonsh
pblue "You can see xonsh path printed above. Press any key to continue."
wait_for_keypress

pblue "adding xonsh to /etc/shells"
which xonsh | sudo tee -a /etc/shells
pgreen "xonsh added to /etc/shells\n"

cat /etc/shells
pblue "Confirm if xonsh in listed shells. Press any key to continue."
wait_for_keypress

pblue "setting xonsh as default shell..."
chsh -s $(which xonsh)
echo -e "\n\n"

infoh1 "xonsh extensions"

# https://github.com/jnoortheen/xontrib-cmd-durations
pblue "Installing cmd_done"
$(which xonsh) -c "xpip install xontrib-cmd-durations" >> "$LOG_DIR.dotfiles.log"
# echo "xontrib load cmd_done" >> ~/.xonshrc
echo -e "\n"

# https://github.com/oh-my-xonsh/xontrib-default-command
pblue "default command"
$(which xonsh) -c "xpip install xontrib-default-command" >> "$LOG_DIR.dotfiles.log"
# echo "xontrib load default_command" >> ~/.xonshrc
echo -e "\n"

# https://github.com/cafehaine/xontrib-xlsd
pblue "xlsd"
$(which xonsh) -c "xpip install xontrib-xlsd" >> "$LOG_DIR.dotfiles.log"
# echo "xontrib load xlsd" >> ~/.xonshrc
echo -e "\n"

# https://github.com/dyuri/xontrib-langenv
pblue "xontrib-langenv - pyenv"
$(which xonsh) -c "xpip install xontrib-langenv" >> "$LOG_DIR.dotfiles.log"
# echo "xontrib load pyenv" >> ~/.xonshrc
echo -e "\n"

pblue "You need to login and logout to use xonsh as default shell"
pgreen "xonsh setup completed"

echo -e "\n\n"