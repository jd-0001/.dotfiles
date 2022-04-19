source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "vue-cli"

pblue "sourcing ~/.profile & ~/.profile for accessing yarn command"
source ~/.profile
source ~/.bashrc

pblue "Installing vue-cli..."
yarn global add @vue/cli >> "$LOG_DIR.dotfiles.log"

pblue "checking installations..."
vue --version
pblue "if you are seeing the version then, you are good to go!"

wait_for_keypress