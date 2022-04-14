# Thanks: https://dev.to/ifenna__/adding-colors-to-bash-scripts-48g4
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
ENDCOLOR="\e[0m"

# TODO: Refactor it to use pblue
infoh1() {
    echo -e "${CYAN}# =================================${ENDCOLOR}"
    echo -e "${CYAN}# $1${ENDCOLOR}"
    echo -e "${CYAN}# =================================${ENDCOLOR}"
    echo ""
}

infoh2() { echo -e "${CYAN}# ==== $1${ENDCOLOR}"; }

# TODO: Refactor to use print function
pblue() { echo -e "${CYAN}$1${ENDCOLOR}"; }

# TODO: Refactor to use print function
pgreen() { echo -e "${GREEN}$1${ENDCOLOR}"; }

# Thanks: https://stackoverflow.com/a/1921337
print() {
    local color="${2:-WHITE}"
    echo -e "${!color}$1${ENDCOLOR}"
}

wait_for_keypress() { read _; }