#!/bin/sh

echo "Add ftp.yzu.edu.tw site into apt source.list"
sed -i "1ideb ftp://ftp.yzu.edu.tw/Linux/raspbian/raspbian/ jessie main contrib non-free rpi" /etc/apt/sources.list
apt-get update
#
apt-get install vim ctags automake subversion ipython3-notebook python3-dev python3-pip
#
echo "link the vimrc and bashrc"
ln -s /home/pi/git/vimrc/pi/pi_vimrc ~/.vimrc
rm ~/.bashrc
ln -s /home/pi/git/vimrc/pi/bashrc ~/.bashrc
#
echo "install chinese font and input"
apt-get install ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy
apt-get install scim scim-tables-zh scim-chewing

echo "install other IDE and editor"
apt-get install vim-gnome geany geany-plugin-py gedit
