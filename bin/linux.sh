#!/bin/bash

LINUXCHECK=$(uname)

echo $LINUXCHECK

if [ $LINUXCHECK != "Linux" ]
then 
	#error message is placed into file
	echo "Error not Linux" >> linuxsetup.log
	exit 
else 
	#makes trash directory 
	mkdir -p ~/.TRASH
	#makes .vimrc into a variable
	FILE=~/.vimrc
	#does it exist?
	if [ -f "$FILE" ] 
	then 
		mv ~/.vimrc ~/.bup_vimrc
	fi 
	#places contents of vimrc into .vimrc in ~
	cat ~/.dotfiles/etc/vimrc > ~/.vimrc
	printf "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi 

