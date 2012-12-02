#!/bin/bash
echo "Backing up current vim config..."
mkdir ~/.vimbackup
cp -r ~/.vim ~/.vimbackup 
cp -r ~/.vimrc ~/.vimbackup 
echo "Setting up symlinks..."
ln -sf ~/vimfiles/vim ~/.vim  
ln -sf ~/vimfiles/vim/vimrc ~/.vimrc 
echo "Getting latest version of Vundle..."
git submodule init
git submodule update
echo "Installing Plugins..."
vim +BundleInstall +qall
echo "Done!"
