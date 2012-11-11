#!/bin/bash

#Setup symbolic links
echo 'Setting up symbolic links'
ln -s ~/environment/bin ~/bin
ln -s ~/environment/vim ~/.vim
ln -s ~/environment/vim/vimrc ~/.vimrc
ln -s ~/environment/jshint/jshintrc ~/.jshintrc
ln -s ~/environment/git/gitconfig ~/.gitconfig
ln -s ~/environment/tmux/tmux.conf ~/.tmux.conf
ln -s ~/environment/grunt/ ~/.grunt
ln -s ~/environment/package.json ~/package.json

#install npm packages
(cd ~/ && npm install)

#Setup Vundler
echo 'Setting up VIM environment'
(cd ~/environment && git submodule init && git submodule update)

#Tell VIM to install all the things and exit
echo 'Installing VIM bundles'
vim -c BundleInstall -c q -c q

echo 'Setting up OSX preferences'
(cd ~/environment/ && ./osxSetup.sh)

#Setup oh-my-zsh
echo 'Installing oh-my-zsh'
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

#change shell 
echo 'Switching default shell to zsh'
chsh -s /bin/zsh

echo 'Finished Please Reload Shell'
echo 'Dont forget to add ~/node_modules/.bin to your path!'
echo 'Dont forget to add ~/bin to your path!'
