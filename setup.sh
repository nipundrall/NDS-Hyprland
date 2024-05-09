#!/bin/bash

ndshypr="$HOME/ndshypr"
#gitthings="$HOME/Downloads/gitthings"
#scripts="$HOME/Downloads/gitthings/scripts"

#Installing Dependencies (arch only)
echo "Installing Dependencies"
sudo pacman -S hyprland discord kitty neofetch pulsemixer waybar git vim hyprpaper hyprlock hypridle wofi cliphist gnome-weather gnome-calculator swaync polkit-kde-agent && yay -S nerd-fonts-complete ttf-icomoon-feather

#Download Dots
echo "Downloading Dotfiles"
cd && git clone https://github.com/nipundrall/NDS-Hyprland.git

mv NDS-Hyprland ndshypr

cd $ndshypr
#ln -s $HOME/ndshypr/qtile ~/.config
#ln -s $HOME/ndshypr/alacritty ~/.config
#ln -s $HOME/ndshypr/zsh ~/.config
#ln -s $HOME/ndshypr/dunst ~/.config
#ln -s $HOME/ndshypr/mpd ~/.config
#ln -s $HOME/ndshypr/ncmpcpp ~/.config
#ln -s $HOME/ndshypr/mpv ~/.config
rm -r ~/.config/neofetch && ln -s $HOME/ndshypr/neofetch ~/.config
#ln -s $HOME/ndshypr/picom ~/.config
#ln -s $HOME/ndshypr/ranger ~/.config
#ln -s $HOME/ndshypr/qutebrowser ~/.config
#ln -s $HOME/ndshypr/rofi ~/.config
ls -s $HOME/ndshypr/vim/vimrc $HOME
ls -s $HOME/ndshypr/hypr ~/.config
ls -s $HOME/ndshypr/waybar ~/.config
ls -s $HOME/ndshypr/wofi ~/.config
ls -s $HOME/ndshypr/bashrc $HOME


#cd $gitthings && git clone https://gitlab.com/thelinuxcast/scripts.git
#cd $scripts
#sudo cp *.sh weather.py /usr/local/bin

#cd $HOME/.config
#git clone https://gitlab.com/thelinuxcast/nvim.git
