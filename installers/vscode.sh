source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "VSCode"

echo "Download vscode by visiting https://code.visualstudio.com/download"
echo "Press any key once downloading is done"
wait_for_keypress

pblue "Installing vscode..."
sudo gdebi -n /tmp/code*.deb >> "$LOG_DIR.dotfiles.log"
pgreen "vscode installed\n"

pblue "Turn on settings sync - login via github"

pblue "Opening vscode in 3 seconds..."
sleep 3
code > /dev/null 2>&1 &

pblue "Press any key once done"
wait_for_keypress

echo -e "\n\n"