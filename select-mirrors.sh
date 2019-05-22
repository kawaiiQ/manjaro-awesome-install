echo 'Select fastest mirrors ...'

read -s -p 'Enter your password: ' PWD
echo

sudo -K
# Password can not be automatically fed into "sudo pacman-mirrors ..." command.
# Somehow, you just need to manually press Enter to finish entering your password.
# So some useless but fast command with sudo will be run first, so password won't be required when running pacman-mirrors.
# 
# ( I have no idea what's going on :-( )
echo -e $PWD | sudo -S echo
sudo -S pacman-mirrors -i -c China -m rank
sudo -K
echo -e $PWD | sudo -S pacman -Syy
