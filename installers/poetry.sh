source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Poetry"

pblue "Installing poetry..."
curl -sSL https://install.python-poetry.org | python3 -

pblue "Checking poetry"
poetry --version

echo -e "If poetry can't be found, add poetry to your PATH and run 'poetry --version' to check if it's working."
echo "Poetry path: $HOME/.local/bin"
echo "Once poetry is installed and found please any key"

wait_for_keypress

pblue "Configuring poetry to create virtual environment in project directory"
poetry config virtualenvs.in-project true

pgreen "Poetry installed\n"