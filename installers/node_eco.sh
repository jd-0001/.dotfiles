source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "nvm"

pblue "Downloading nvm..."
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash >> "$LOG_DIR.dotfiles.log"

pblue "Setting up nvm for this script to run further commands which depends on it"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
pgreen "nvm setup complete\n"

pblue "Insallin Node LTS version & setting it as default version"
nvm install --lts >> "$LOG_DIR.dotfiles.log" && nvm use --lts >> "$LOG_DIR.dotfiles.log"
pgreen "nvm installation and setup completed"

echo -e "\n\n"

infoh1 "yarn"

# source bashrc
source ~/.bashrc

pblue "Installing yarn..."
npm --version
npm install --global yarn  >> "$LOG_DIR.dotfiles.log"
pgreen "Yarn installed\n"

pblue "Adding yarn global bin path to `~/.profile`"
echo -e '\n\n#Yarn global executables\nexport PATH="$PATH:`yarn global bin`"' >> ~/.profile
pgreen "Path added\n"

infoh1 "yarn"

pblue "Installing vue-cli..."
yarn global add @vue/cli >> "$LOG_DIR.dotfiles.log"
npm --version

pblue "checking installations..."
vue --version
pblue "if you are seeing the version then, you are good to go!"

wait_for_keypress

echo -e "\n\n"