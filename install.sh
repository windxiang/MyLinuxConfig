#!/bin/sh
#setup vi 
echo "setup vim conf"
rm -rf ~/.vimrc
rm -rf ~/.vim
ln -s $PWD/.vim/ ~/
ln -s $PWD/.vim/.vimrc ~/

#setup vi fonts
echo "setup vim fonts"
ln -s $PWD/.fonts/ ~/
mkfontscale
mkfontdir
fc-cache -vf

#setup tmux
echo "setup tmux conf"
rm -rf ~/.tmux.conf
ln -s $PWD/.tmux.conf ~/
