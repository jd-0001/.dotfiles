source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

mkdir -p ~/Projects/clevision
mkdir -p ~/.config/gtk-3.0

# Thanks: https://askubuntu.com/a/597414

# Set bookmarks
pblue "Setting bookmarks in nautilus"
echo "file:///tmp tmp" >> ~/.config/gtk-3.0/bookmarks
echo "file:///home/jd/Projects/clevision clevision" >> ~/.config/gtk-3.0/bookmarks

pblue "Enabling always show hidden files..."
dconf write /org/gtk/settings/file-chooser/show-hidden true

pblue "Configuring dock settings..."
dconf write /org/gnome/shell/extensions/dash-to-dock/dock-fixed false
dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position "'BOTTOM'"
dconf write /org/gnome/shell/extensions/dash-to-dock/extend-height false

pblue "Adding favorite apps..."
dconf write /org/gnome/shell/favorite-apps "['org.gnome.Nautilus.desktop', 'slack.desktop', 'google-chrome.desktop', 'code.desktop']"
# gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'slack.desktop', 'google-chrome.desktop', 'code.desktop']"

pblue "Updating keyboard shortcuts for screenshot."
# pblue "It will save screenshots in /tmp dir instead of Pictures dir"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Super>e'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'xdg-open /tmp'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'Open /tmp dir'"

# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Open /tmp dir'
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'xdg-open /tmp'
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>e'

# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'Save screenshot of an area to /tmp'
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'gnome-screenshot -a'
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Shift>Print'

# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name 'Save screenshot of a window to /tmp'
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command 'gnome-screenshot -w'
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding '<Alt>Print'

# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ name 'Save screenshot to /tmp'
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ command 'gnome-screenshot'
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ binding 'Print'

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"