echo 'Update all packages ...'
echo

read -s -p 'Enter your password: ' PWD

sudo -K
echo -e $PWD | sudo -S pacman -Syu --noconfirm
