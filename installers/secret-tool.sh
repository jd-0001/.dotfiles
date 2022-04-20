source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "secret-tool"

sudo apt-get install libsecret-tools -y >> "$LOG_DIR.dotfiles.log"