# 这个脚本会干什么：
# - 使用gvim替代vim；
# - 安装可能用到的各种编译器和解释器；
# - 为vim安装vim-plug以管理插件；
# - 将vim的配置文件放置到你的个人目录下：
#     安装的插件有：
#       - coc.nvim：以自动补全为主的插件管理器，用于自动补全，
#                   本脚本会配置默认自动补全插件，首次启动vim时会进行安装；
#       - nerdtree：左侧目录树，方便切换文件；
#       - rainbow：彩虹括号；
#       - vimtex：使用LaTex相关功能；
#       - tex-conceal.vim：LaTex所见即所得化；
#       - typescript-vim：TypeScript高亮；
#       - vim-jsx-typescript：TypeScript高亮。
#     配置的快捷键有：
#       - <,>：     切换到前一个标签页；
#       - <.>：     切换到后一个标签页；
#       - <Ctrl+n>：弹出/收回目录树；
#       - <Ctrl+P>：编译LaTex文本。
#     其他设置有：
#       - 显示行号，且将行号背景设为黑色；
#       - 设置缩进为2；
#       - 设置自动缩进；
#       - 使用系统剪贴板；

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
