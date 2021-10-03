pacman -Syu
pacman -S linux-lts linux-lts-headers flatpak neovim redshift kdenlive gimp freecad npm python-pip htop steam lutris transmission-gtk 


#flutter
pacman -S kotlin dart android-tools
git clone https://aur.archlinux.org/flutter.git
cd flutter 
makepkg -sic


yay -Syu
yay -S pamac android-studio zoom

reboot

