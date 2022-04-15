source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "VSCode"

echo "Download vscode by visiting https://code.visualstudio.com/download"
echo "Press any key once downloading is done"
wait_for_keypress

pblue "Installing vscode..."
sudo dpkg -i /tmp/code*.deb >> "$LOG_DIR.dotfiles.log"
pgreen "vscode installed"

pblue "Opening vscode"
code > /dev/null 2>&1 &

echo "sign in using github and sync settings"
wait_for_keypress

echo -e "\n\n"