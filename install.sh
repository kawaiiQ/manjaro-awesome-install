echo '================================================'
echo '         Manjaro Awesome WM Init Script'
echo '================================================'
echo
echo 'Your password is required to finish some processes.'
read -s -p 'Enter your password: ' PWD
echo
echo
echo

# select fastest mirrors
echo $PWD | sh ./select-mirrors.sh
# update softwares
echo $PWD | sudo sh ./update-softwares.sh
# setup fonts
echo $PWD | sh ./setup-fonts.sh
# setup vim
echo $PWD | sh ./setup-vim-ide.sh
