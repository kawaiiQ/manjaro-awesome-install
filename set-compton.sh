# 这个脚本会干什么：
#   配置Compton，实现部分窗口半透明特效，
#   需要说明的是，全局半透明很辣眼睛……所以只设置部分程序窗口，包括：
#   - LXTerminal
#   - Compton
#   - 部分菜单


echo 'Set Compton ...'
echo

read -s -p "Enter your password: " PWD
echo

/bin/cp ./confs/compton.conf ~/.config/compton.conf

