source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Installing chrome"

# Download chrome
pinfo "Downloading chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp >> "$LOG_DIR.dotfiles.log"
psuccess "Chrome downloaded"

# Install chrome
pinfo "Installing chrome now..."
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb >> "$LOG_DIR/chrome-installer.log" >> "$LOG_DIR.dotfiles.log"
psuccess "Chrome installed"

# Manual configuration
infoh2 "Configure chrome:"
echo '1. Set chrome download location to "/tmp"'
echo '2. Go to "Privacy & Security" > security and choose "enhanced protection"'
echo '3. Login Google'
echo '4. Login GitHub'

wait_for_keypress