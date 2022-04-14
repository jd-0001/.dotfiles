source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "nvm"

pinfo "Downloading nvm..."
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash >> "$LOG_DIR.dotfiles.log"

pinfo "Insallin Node LTS version & setting it as default version"
nvm install --lts && nvm use --lts