# Ubuntu Customization

This document describes the steps to customize Ubuntu with themes, GNOME extensions, essential programs, and additional tweaks. 

For a faster installation, you can use the automated script available in `UbuntuSetup.sh`, which installs most packages automatically. However, some steps must be done manually.

## Installation Order

### 1. Download Configuration Files
Before running the script, download the necessary customization files from [Pling.com](https://www.pling.com/p/2176652/):

- Conky Config
- Cava Config
- Fonts
- Cursors Theme
- GNOME Extensions
- Icon Themes
- GTK Themes
- Wallpapers
- FishOMP Config
- Ubuntu Desktop Settings

### 2. Run the Automated Setup Script

Instead of manually installing packages, you can use the script:

```sh
chmod +x UbuntuSetup.sh
./UbuntuSetup.sh
```

This script:
- Updates the system
- Installs essential packages
- Installs Flatpak applications
- Configures Fish shell and Oh My Posh
- Installs GNOME utilities and Plymouth boot screen

After running the script, proceed with the manual steps below.

### 3. Apply Themes and Customizations

```sh
unzip -o ~/Downloads/gnome-extensions.zip -d ~/.local/share/gnome-shell/
mkdir -p ~/.themes
unzip -o ~/Downloads/GTK-Themes.zip -d ~/.themes

# Dark Theme
ln -sf ~/.themes/Orchis-Dark/gtk-4.0/{assets,gtk.css,gtk-dark.css} ~/.config/gtk-4.0/
# Light Theme
ln -sf ~/.themes/Orchis-Light/gtk-4.0/{assets,gtk.css,gtk-dark.css} ~/.config/gtk-4.0/

mkdir -p ~/.local/share/icons
unzip -o ~/Downloads/icon-themes.zip -d ~/.local/share/icons

mkdir -p ~/.icons
unzip -o ~/Downloads/cursors-theme.zip -d ~/.icons

unzip -o ~/Downloads/fonts.zip -d ~/.local/share/
sudo unzip -o ~/Downloads/wallpapers.zip -d /usr/share/backgrounds/
```

### 4. Load GNOME Desktop Settings

```sh
unzip ~/Downloads/ubuntu-desktop-settings.zip -d ~/Downloads/
dconf load / < ~/Downloads/ubuntu-desktop-settings.conf
```

## What Needs to Be Done Manually

1. Download the files from [Pling.com](https://www.pling.com/p/2176652/)
2. Select the GNOME theme using GNOME Tweaks
3. Manually adjust some extensions as preferred


