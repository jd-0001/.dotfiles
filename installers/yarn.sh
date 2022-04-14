source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "yarn"

pblue "Installing yarn..."
npm install --global yarn  >> "$LOG_DIR.dotfiles.log"

pblue "Adding yarn global bin path to `~/.profile`"
echo -e '\n\n#Yarn global executables\nexport PATH="$PATH:`yarn global bin`"' >> ~/.profile
pgreen "Path added"