source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "xonsh"

pblue "Installing pip..."
sudo apt-get install python3-pip -y >> "$LOG_DIR.dotfiles.log"
pgreen "pip installed\n"

pblue "Installing xonsh..."
sudo apt-get install -y xonsh >> "$LOG_DIR.dotfiles.log"
pgreen "xonsh installed\n"

pblue "Make sure xonsh is in /etc/shells"
echo "printing /etc/shells:"
cat /etc/shells
echo -e "\nif xonsh is not in /etc/shells, add it to /etc/shells by running which xonsh >> /etc/shells"

wait_for_keypress

pblue "setting xonsh as default shell..."
chsh -s $(which xonsh)
echo -e "\n\n"

infoh1 "xonsh extensions"

# https://github.com/jnoortheen/xontrib-cmd-durations
pblue "Installing cmd_done"
/usr/bin/xonsh -c "xpip install xontrib-cmd-durations" >> "$LOG_DIR.dotfiles.log"
# echo "xontrib load cmd_done" >> ~/.xonshrc
echo -e "\n"

# https://github.com/oh-my-xonsh/xontrib-default-command
pblue "default command"
/usr/bin/xonsh -c "xpip install xontrib-default-command" >> "$LOG_DIR.dotfiles.log"
# echo "xontrib load default_command" >> ~/.xonshrc
echo -e "\n"

# https://github.com/cafehaine/xontrib-xlsd
pblue "xlsd"
/usr/bin/xonsh -c "xpip install xontrib-xlsd" >> "$LOG_DIR.dotfiles.log"
# echo "xontrib load xlsd" >> ~/.xonshrc
echo -e "\n"

# https://github.com/dyuri/xontrib-langenv
# pblue "xontrib-langenv - pyenv"
# /usr/bin/xonsh -c "xpip install xontrib-langenv" >> "$LOG_DIR.dotfiles.log"
# # echo "xontrib load pyenv" >> ~/.xonshrc
# echo -e "\n"

pblue "You need to login and logout to use xonsh as default shell"
pgreen "xonsh setup completed"

echo -e "\n\n"