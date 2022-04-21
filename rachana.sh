source "$(dirname "$0")/utils/functions.sh"
source "$(dirname "$0")/utils/vars.sh"

infoh1 "Rachana"

pblue "Getting rachana"
git clone https://github.com/jd-0001/rachana ~/Rachana >> "$LOG_DIR.dotfiles.log"
pgreen "Clone successful\n"

pblue "installing rachana packages using poetry..."
cd ~/Rachana

source ~/.bashrc
source ~/.profile

poetry install > /dev/null 2>&1

pblue "Adding rachana scripts to PATH"
echo 'export PATH="/home/jd/Rachana/scripts:$PATH"' >> ~/.bashrc

pgreen "Rachana setup complete"