# manjaro-awesome-install

一些自动化安装配置某些软件的脚本，主要用来在我重装Awesome WM的版本的Manjaro之后能够较为自动地配置好我常用的环境。

Awesome WM is Awesome ! 😏

## 包含的脚本

* **install.sh**: 自动调用以下所有脚本，配置好整个环境；
* **select-mirrors.sh**: 切换到国内的源（这个脚本会弹出一个窗口让你手动选择想选的国内源）；
* **update-software.sh**: 升级所有软件；
* **setup-fonts.sh**: 安装中文输入法，安装常用中文字体，以及一些数学上需要用的字体，以及emoji；
* **setup-vim-ide.sh**: 配置神之编辑器——Vim(😏)，配置目录树、代码补全等插件，配置常见编程环境；
* **set-compton.sh**: 配置Compton，实现部分窗口半透明特效。

## 如何运行

* 按照我的设置配置好整个环境，只需要运行install.sh即可；
* 如果只是想配置某一特定的方面，可以运行特定的脚本，每个脚本的功能已经在上面给出了。

## 注意

这个脚本是给Manjaro写的，当然理论上Arch也是没问题的。

有部分脚本是专门针对Awesome WM桌面环境的，对于其他桌面环境可能没有效果。
