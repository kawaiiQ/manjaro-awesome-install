# 这个脚本会干什么：
# - 使用gvim替代vim；
# - 安装可能用到的各种编译器和解释器；
# - 为vim安装vim-plug以管理插件；
# - 将vim的配置文件放置到你的个人目录下，具体装了啥参见confs文件夹下的.vimrc文件。

echo 'Setup Vim ...'

read -s -p 'Enter your password: ' PWD
echo

# 为了免于重新编译整个vim地使用系统剪贴板，使用gvim
sudo -K
echo $PWD | sudo -S pacman -R vim --noconfirm
sudo -K
echo $PWD | sudo -S pacman -S gvim --noconfirm
# 安装各类编译器和解释器，准备好vim插件的环境
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
  texlive-most texlive-lang biber xdotool zathura \
  --noconfirm
rm -rf  ~/.vim
# 下载安装vim-plug
sudo -K
echo $PWD | sudo -S pacman -S git curl --noconfirm
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./confs/.vimrc ~/.vimrc
vim -c PlugInstall -c q -c q
