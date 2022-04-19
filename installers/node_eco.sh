source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "nvm"

pblue "Downloading nvm..."
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash  2>&1

pblue "Setting up nvm for this script to run further commands which depends on it"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
pgreen "nvm setup complete\n"

pblue "Insallin Node LTS version & setting it as default version"
nvm install --lts && nvm use --lts 2>&1
pgreen "nvm installation and setup completed"

echo -e "\n\n"

infoh1 "yarn"

# source bashrc
source ~/.bashrc

pblue "Installing yarn..."
npm install --global yarn 2>&1
pgreen "Yarn installed\n"

pblue "Adding yarn global bin path to `~/.profile`"
echo -e '\n\n#Yarn global executables\nexport PATH="$PATH:`yarn global bin`"' >> ~/.profile
pgreen "Path added\n"

# source
source ~/.bashrc
source ~/.profile

infoh1 "yarn"

pblue "Installing vue-cli..."
yarn global add @vue/cli 2>&1

pblue "checking installation..."
vue --version
pgreen "Setup complete"

wait_for_keypress

echo -e "\n\n"