source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "pgadmin4"

pblue "Installing required libraries..."
sudo apt-get install libpq-dev -y >> "$LOG_DIR.dotfiles.log"

sudo mkdir /var/lib/pgadmin
sudo mkdir /var/log/pgadmin
sudo chown $USER /var/lib/pgadmin
sudo chown $USER /var/log/pgadmin

# Navigate to $HOME
cd ~

echo -e "Creating new virtual environment..."
python3 -m venv pgadmin4
source pgadmin4/bin/activate

echo -e "Installing pgadmin4"
pip install pgadmin4
pgreen "pgadmin4 installed successfully\n"

echo -e "Let's configure pgadmin4 with email: user@domain.com & password: adminadmin\n"
echo -e "Press control+c to exit once configured and pgadmin4 server ran"
pgadmin4
