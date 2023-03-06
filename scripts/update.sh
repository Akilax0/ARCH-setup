echo "APT package update"
sudo apt update && sudo apt upgrade &&
echo "Flatpak package update"
sudo flatpak update &&

echo "Neovim update"
# Update Neovim to latest from master
# https://github.com/neovim/neovim/commits/master
# You should have the Neovim repo cloned
cd ~/Packages/neovim/ && # change to your local repo
ls && 
git pull && 
make distclean &&
make CMAKE_BUILD_TYPE=RelWithDebInfo -j4 && # Fast with Debug info. Not quite Release fast.
sleep 10 && # You don't need this but I have my reasons :-)
sudo make install
# enter password
