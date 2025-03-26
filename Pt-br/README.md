# Customização do Ubuntu

Este documento descreve os passos para customizar o Ubuntu com temas, extensões do GNOME, programas essenciais e ajustes adicionais.

## Atualização do sistema

```sh
sudo apt update && sudo apt dist-upgrade -y
```

## Instalação de pacotes essenciais

```sh
sudo apt install curl git rsync gdebi nautilus-admin nautilus-extension-gnome-terminal sassc gnome-tweaks gnome-shell-extension-manager -y
```

## Download de configurações e temas

Baixe os seguintes arquivos de [Pling.com](https://www.pling.com/p/2176652/):

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

## Aplicando temas e personalizações

```sh
unzip -o ~/Downloads/gnome-extensions.zip -d ~/.local/share/gnome-shell/
mkdir -p ~/.themes
unzip -o ~/Downloads/GTK-Themes.zip -d ~/.themes

# Tema escuro
ln -sf ~/.themes/Orchis-Dark/gtk-4.0/{assets,gtk.css,gtk-dark.css} ~/.config/gtk-4.0/
# Tema claro
ln -sf ~/.themes/Orchis-Light/gtk-4.0/{assets,gtk.css,gtk-dark.css} ~/.config/gtk-4.0/

mkdir -p ~/.local/share/icons
unzip -o ~/Downloads/icon-themes.zip -d ~/.local/share/icons

mkdir -p ~/.icons
unzip -o ~/Downloads/cursors-theme.zip -d ~/.icons

unzip -o ~/Downloads/fonts.zip -d ~/.local/share/
sudo unzip -o ~/Downloads/wallpapers.zip -d /usr/share/backgrounds/
```

## Instalação de Conky e Cava

```sh
sudo apt install conky-all jq curl playerctl -y
unzip -o ~/Downloads/conky-config.zip -d ~/.config

sudo apt install cava -y
unzip -o ~/Downloads/cava-config.zip -d ~/.config/
```

## Neofetch

```sh
sudo apt install neofetch -y
unzip -o ~/Downloads/neofetch-config.zip -d ~/.config/
```

## Fish e Oh My Posh

```sh
sudo apt install fish -y
chsh -s /usr/bin/fish
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
unzip -o ~/Downloads/fishomp-config.zip -d ~/
chmod u+rw ~/.poshthemes/*.json
```

## Flatpak e programas adicionais

```sh
sudo apt install gnome-software gnome-software-plugin-flatpak flatpak libfuse2 -y
flatpak install flathub io.bassi.Amberol -y
flatpak install flathub net.agalwood.Motrix -y
flatpak install flathub com.rafaelmardojai.Blanket -y
flatpak install flathub com.github.KRTirtho.Spotube -y
flatpak install flathub com.mattjakeman.ExtensionManager -y
```

## Permissões para Flatpak

```sh
sudo flatpak override --filesystem=~/.themes
sudo flatpak override --filesystem=~/.local/share/icons
sudo flatpak override --filesystem=xdg-config/gtk-4.0
```

## Instalação de aplicativos GNOME

```sh
sudo apt install gnome-weather gnome-maps gnome-audio gnome-calendar gnome-clocks gnome-connections gnome-console gnome-contacts gnome-music vlc gnome-shell-pomodoro -y
```

## Plymouth (Tela de boot)

```sh
sudo apt install plymouth -y
sudo update-alternatives --install \
    /usr/share/plymouth/themes/default.plymouth plymouth-theme \
    /usr/share/plymouth/themes/hexagon_dots/hexagon_dots.plymouth 100
sudo update-alternatives --config default.plymouth
sudo update-initramfs -u
```

## Configuração de Desktop

```sh
unzip ~/Downloads/ubuntu-desktop-settings.zip -d ~/Downloads/
dconf load / < ~/Downloads/ubuntu-desktop-settings.conf
```

## O que precisa ser feito manualmente

1. Baixar os arquivos da [Pling.com](https://www.pling.com/p/2176652/)
2. Selecionar o tema do GNOME pelo GNOME Tweaks
3. Ajustar manualmente algumas extensões conforme preferência


