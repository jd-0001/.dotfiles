set -e

# Chrome
echo "installing chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
echo 'Config chrome:'
echo '1. set chrome download location to "/tmp"'
echo '2. go to privacy & security > security and choose "enhanced protection"'
#echo '3. Login GitHub'
read configure_chrome

# Slack
echo "visit: https://slack.com/intl/en-in/downloads/linux to download slack & login"

# Gnome tweaks
echo "Installing gnome tweaks..."
sudo apt install gnome-tweaks
echo "gnome tweaks installed. Let's configure it:"
echo "1. Add slack to startip application"
echo '2. windows → window focus → "focus on hover" & check "raise windows when focused"'
echo '3. workspaces → display handling → workspaces span display'


# nvm
echo "Installing nvm..."
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install --lts && nvm use --lts

# yarn
echo "Installing yarn..."
npm install --global yarn 
echo '\n\n#Yarn global executables\nexport PATH="$PATH:`yarn global bin`"' >> ~/.profile

# vscode
echo "Download vscode by visiting https://code.visualstudio.com/download and sign in using github and sync settings"

# dconf
sudo apt install dconf-editor