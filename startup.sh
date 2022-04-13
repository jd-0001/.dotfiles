set -e

# install curl
sudo apt install curl

# Snaps
echo "Let's remove snaps now :)"
echo "Below is list of snaps"
snap list
echo "Removing possible snaps..."
sudo snap remove --purge firefox
sudo snap remove --purge gnome-3-38-2004
sudo snap remove --purge snapd-desktop-integration
sudo snap remove --purge snap-store
sudo snap remove --purge gtk-common-themes
sudo snap remove --purge bare
sudo snap remove --purge core20
sudo snap remove --purge snapd
echo "Remaining snaps"
snap list
echo 'Remove listed snaps using "sudo snap remove --purge <package-name>" in separate tab'
echo 'Press key when done removing all packages'
read is_snaps_removed
sudo rm -rf /var/cache/snapd/
sudo apt autoremove --purge snapd gnome-software-plugin-snap
rm -fr ~/snap
sudo apt-mark hold snapd