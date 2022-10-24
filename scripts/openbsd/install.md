# configure doas 
vim /etc/doas.conf

[link](https://www.vultr.com/docs/introduction-to-doas-on-openbsd/)

## Enter the following lines 
permit persis: wheel

## If user not added to wheel group 
usermod -G wheel $whoami

# i3 install
doas pkg_add i3-gaps i3lock dmenu xautolock rxvt-unicode nitrogen qtfm git firefox-esr 

## configure i3

mkdir -p ~/.config/i3status
cp /etc/local/share/examples/i3status/i3status.conf ~/.config/i3status
echo exec i3 > .xsession

