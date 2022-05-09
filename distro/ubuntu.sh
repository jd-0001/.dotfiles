source "$(dirname "$0")/../utils/functions.sh"
source "$(dirname "$0")/../utils/vars.sh"

infoh1 "Gnome"

mkdir -p ~/Projects/clevision
mkdir -p ~/.config/gtk-3.0

# Thanks: https://askubuntu.com/a/597414

# Set bookmarks
pblue "Setting bookmarks in nautilus"
echo "file:///tmp tmp" >> ~/.config/gtk-3.0/bookmarks
echo "file:///home/jd/Projects/clevision clevision" >> ~/.config/gtk-3.0/bookmarks

pblue "Configuring nautilus..."
# Enable show hidden files
dconf write /org/gtk/settings/file-chooser/show-hidden true

# Set zoom level for directory
dconf write /org/gnome/nautilus/list-view/default-zoom-level "'small'"

# Default directory view list/grid
dconf write /org/gnome/nautilus/preferences/default-folder-viewer "'list-view'"

# Use tree view when in list view
dconf write /org/gnome/nautilus/list-view/use-tree-view true

# Show week day with date
dconf write /org/gnome/desktop/interface/clock-show-weekday true

# Hovering over window focuses it
dconf write /org/gnome/desktop/wm/preferences/focus-mode "'sloppy'"

pblue "Configuring dock settings..."

# Auto hide dock
dconf write /org/gnome/shell/extensions/dash-to-dock/dock-fixed false

# Move dock to bottom
dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position "'BOTTOM'"

# Don't take full width
dconf write /org/gnome/shell/extensions/dash-to-dock/extend-height false

# Enable dock on all displays
dconf write /org/gnome/shell/extensions/dash-to-dock/multi-monitor true

pblue "Adding favorite apps..."
dconf write /org/gnome/shell/favorite-apps "['org.gnome.Nautilus.desktop', 'slack.desktop', 'google-chrome.desktop', 'code.desktop']"

pblue "Adding keyboard shortcuts"

# Open tmp directory when pressing <super> + e
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Super>e'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'xdg-open /tmp'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'Open /tmp dir'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"

dconf write /org/gnome/shell/extensions/ding/show-home false

# Workspaces
dconf write /org/gnome/mutter/workspaces-only-on-primary false
dconf write /org/gnome/shell/extensions/dash-to-dock/isolate-workspaces true

pgreen "Gnome configured :)"
echo -e "\n\n"