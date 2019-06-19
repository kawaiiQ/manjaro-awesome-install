echo 'Install useful packages ...'
echo

read -s -p "Enter your password: " PWD
echo

sudo -K
echo $PWD | sudo -S pacman -S unimatrix unclutter chromium compton simplescreenrecorder filezilla bftpd --noconfirm
