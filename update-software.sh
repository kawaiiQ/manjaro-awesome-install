# 这个脚本会干什么：
# - 更新所有已安装软件。

echo 'Update all packages ...'
echo

read -s -p 'Enter your password: ' PWD

sudo -K
echo -e $PWD | sudo -S pacman -Syu --noconfirm
