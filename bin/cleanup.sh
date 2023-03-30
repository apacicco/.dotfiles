#!/bin/bash
rm ~/.vimrc #removes .vimrc
sed -i 's|source ~/dotfiles/bashrc_custom| |g' ~/.bashrc
#replaces code in '' with ~/basrc
rm -r ~/.TRASH #removes .TRASH

