source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Poetry"

pblue "Installing venv"
# python --version | grep -oP "\w+\s\d\.\d+" | sed 's/ //' => python3.10 (two digit version)
sudo apt-get install $(python3 --version | grep -oP "\w+\s\d\.\d+" | sed 's/ //')-venv -y >> "$LOG_DIR.dotfiles.log"
pgreen "venv installed\n"

pblue "Installing poetry..."
curl -sSL https://install.python-poetry.org | python3 - >> "$LOG_DIR.dotfiles.log"
pgreen "poetry installed\n"

pblue "Adding ~/.local/bin to PATH"
echo -e '\n\n#Poetry\nexport PATH="$HOME/.local/bin:$PATH"' >> ~/.profile
source ~/.bashrc
source ~/.profile

echo -e "$poetry_version_output"

 pblue "Checking poetry"
 poetry --version

 echo "Once poetry is installed and found press any key"

 wait_for_keypress

pblue "Configuring poetry to create virtual environment in project directory"
poetry config virtualenvs.in-project true

pgreen "Poetry installed\n"