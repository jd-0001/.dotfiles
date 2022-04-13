sudo apt install curl

# Snaps
echo "Let's remove snaps now :)"
echo "Below is list of snaps"
snap list
echo 'Remove listed snaps using "sudo snap remove --purge <package-name>"'
echo 'Press key when done removing all packages'
read is_snaps_removed
sudo rm -rf /var/cache/snapd/
sudo apt autoremove --purge snapd gnome-software-plugin-snap
rm -fr ~/snap
sudo apt-mark hold snapd