#!/bin/bash

#This script is shamelessly stolen off of HorseMD

# This should be changed if dotfiles was cloned outside the root of your home directory!
dotfiles=~/dotfiles
# base directory to place backups in
backup_dir=$dotfiles/dotfiles_bkp

# Create the folder if it doesn't exist. Also echo this.
# $1 = file/path/here
make_backupdir() {
	if [ ! -d $1 ]; then
		echo "* Creating backup directory $1"
		mkdir -p $1
	fi
}

setup_dotfile() {
	echo "Linking $(basename $1):"
	# remove any symlink that's already there
	if [ -L ~/.$1 ]; then
		echo "* Removing old link to $dotfile"
		rm ~/.$1
	fi
	# backup any REAL file that's there
	if [ -f ~/.$1 ]; then
		echo "* File ~/.$1 already exists, backing up..."
		base_dir=$(dirname $1)
		make_backupdir $backup_dir/$base_dir
		mv ~/.$1 $backup_dir/$1
	fi
	ln -s $dotfiles/$1 ~/.$1
	echo "* Linked $dotfiles/$1 to ~/.$1"
}

setup_non_dotfile() {
	echo "Linking $(basename $1):"
	# remove any symlink that's already there
	if [ -L ~/$1 ]; then
		echo "* Removing old link to $dotfile"
		rm ~/$1
	fi
	# backup any REAL file that's there
	if [ -f ~/$1 ]; then
		echo "* File ~/$1 already exists, backing up..."
		base_dir=$(dirname $1)
		make_backupdir $backup_dir/$base_dir
		mv ~/$1 $backup_dir/$1
	fi
	ln -s $dotfiles/$1 ~/$1
	echo "* Linked $dotfiles/$1 to ~/.$1\n"
}

for dotfile in vimrc bashrc bash_profile compton.conf gtkrc-2.0 vimrc xinitrc Xresources i3 icons vim conkyrc; do
	setup_dotfile $dotfile
done

for dotfile in gtk-3.0; do
	setup_non_dotfile $dotfile
done
