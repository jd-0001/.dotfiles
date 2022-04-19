source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Rachana"

pblue "Getting rachana"
git clone https://github.com/jd-0001/rachana ~/Rachana
psuccess "Clone successful"

# install packages using poetry
# add rachana scripts path to bin