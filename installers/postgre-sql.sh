source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "postgreSQL"

echo -e "Installing postgreSQL...\n"
sudo apt-get install postgresql postgresql-contrib -y >> "$LOG_DIR.dotfiles.log"

echo -e "Starting postgreSQL...\n"
sudo systemctl start postgresql.service

echo -e "Creating a new role..."
pblue "Enter your current username as role and say 'Yes' for making this role superuser\n"
sudo -u postgres createuser --interactive

pgreen "PostgreSQL installed\n"