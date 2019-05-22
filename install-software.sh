echo 'Install useful packages ...'
echo

read -s -p "Enter your password: " PWD
echo

sudo -K
echo -e PWD | sudo -S pacman -S chromium simplescreenrecorder filezilla
