source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Gnome Tweaks"

pblue "Installing gnome tweaks..."
sudo apt-get install gnome-tweaks -y >> "$LOG_DIR.dotfiles.log"
pgreen "gnome-tweaks installed successfully \n"

pblue "Let's configure gnome-tweaks:"
echo "1. Add slack to startup application"
echo '2. windows → window focus → "focus on hover" & check "raise windows when focused"'
echo '3. Top Bar → Clock → weekday = true'
echo ""

pblue "Opening gnome-tweaks in 3 seconds..."
sleep 3
gnome-tweaks > /dev/null 2>&1 &

wait_for_keypress

echo -e "\n\n"