source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Processing slack"

echo "visit: https://slack.com/intl/en-in/downloads/linux to download slack"
echo "Press any key once downloading is done"
wait_for_keypress

pblue "Installing slack..."
sudo dpkg -i /tmp/slack*.deb >> "$LOG_DIR.dotfiles.log"
pgreen "Slack installed"

echo "Login slack and press any key"
wait_for_keypress

echo -e "\n\n"