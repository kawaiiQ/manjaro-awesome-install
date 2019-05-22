echo 'Setup Vim ...'

read -s -p 'Enter your password: ' PWD
echo

# install gvim instead of vim to use clipboard
sudo -K
echo $PWD | sudo -S pacman -R vim --noconfirm
sudo -K
echo $PWD | sudo -S pacman -S gvim --noconfirm
# prepare environment for vim extensions
sudo -K
echo $PWD | sudo -S pacman -S \
  boost boost-libs make cmake \
  clang gcc \
  python python2 python-pip python2-pip \
  jdk-openjdk maven \
  mono \
  rust \
  go \
  nodejs npm yarn \
  texlive-most texlive-lang biber \
  --noconfirm
rm -rf  ~/.vim
# download vim-plug and other extensions
sudo -K
echo $PWD | sudo -S pacman -S git curl --noconfirm
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./confs/.vimrc ~/.vimrc
vim -c PlugInstall -c q -c q
