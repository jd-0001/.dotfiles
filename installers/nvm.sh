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
nvm install --lts && nvm use --lts >> "$LOG_DIR.dotfiles.log"
pgreen "nvm installation and setup completed"

pblue "trying running node"
node --version

pblue "trying running npm"
npm --version

echo -e "\n\n"