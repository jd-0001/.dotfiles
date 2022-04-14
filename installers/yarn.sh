source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "yarn"

pinfo "Installing yarn..."
npm install --global yarn 

pinfo "Adding yarn global bin path to `~/.profile`"
echo -e '\n\n#Yarn global executables\nexport PATH="$PATH:`yarn global bin`"' >> ~/.profile
psuccess "Path added"