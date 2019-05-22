echo 'Set up Chinese environment ...'

read -s -p "Enter your password: " PWD
echo

sudo -K
echo $PWD | sudo -S pacman -S wqy-microhei wqy-microhei-lite wqy-bitmapfont wqy-zenhei \
                              ttf-arphic-ukai ttf-arphic-uming \
                              adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts \
                              noto-fonts-cjk \
                              noto-fonts-emoji ttf-freefont ttf-arphic-uming \
                              fcitx fcitx-im fcitx-configtool fcitx-googlepinyin --noconfirm
cp ./confs/.xprofile ~/ 
