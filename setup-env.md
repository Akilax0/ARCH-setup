
#i3-endeavour installer

https://github.com/endeavouros-team/endeavouros-i3wm-setup

sudo pacman -S alacritty zsh neovim 

## .config/i3/config edits

comment out firefox auto open 
replace terminal 
	bindsym $mod+Return exec alacritty
	assign [class="alacritty"] $ws1


## ZSH settings
check for zsh version
	zsh --version

change shell
	chsh -s ($which zsh)

logout login

oh-my-zsh install

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"





