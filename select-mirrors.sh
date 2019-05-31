# 这个脚本会干什么：
# - 切换到国内的源；
# - 更新所有已安装软件。

echo 'Select fastest mirrors ...'

read -s -p 'Enter your password: ' PWD
echo

sudo -K
# 很难受，"sudo pacman-mirrors ..."，就是不能自动输入密码……
# 不知道为啥，就是得再手动敲个回车才行。
# 所以为了解决这个问题，就先用管理员命令执行一个可以瞬间完成的命令，
# 这样再执行切换源的命令就无需输入密码了。
# ( I have no idea what's going on :-( )
echo -e $PWD | sudo -S echo
sudo -S pacman-mirrors -i -c China -m rank
sudo -K
echo -e $PWD | sudo -S pacman -Syy
echo -e $PWD | sh ./update-software.sh
