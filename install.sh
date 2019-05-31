echo '================================================'
echo '         Manjaro Awesome WM Init Script'
echo '================================================'
echo
echo 'Your password is required to finish some processes.'
read -s -p 'Enter your password: ' PWD
echo
echo
echo

# 切换到国内的源并自动更新所有软件
echo $PWD | sh ./select-mirrors.sh
# 设置中文字体，安装中文输入法
echo $PWD | sh ./setup-fonts.sh
# 配置神之编辑器
echo $PWD | sh ./setup-vim-ide.sh
# 安装常用软件
echo $PWD | sh ./install-software.sh
