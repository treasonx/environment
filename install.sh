#!/bin/bash

#must have node!
node=`which node 2>&1`
if [ $? -ne 0 ]; then
  echo "Please install NodeJS."
  echo "http://nodejs.org/"
  exit 1
fi

#Setup symbolic links
echo 'Setting up symbolic links'
ln -s ~/environment/bin ~/bin
ln -s ~/environment/nvim ~/.nvim
ln -s ~/environment/hammerspoon ~/.hammerspoon
ln -s ~/environment/git/gitconfig ~/.gitconfig
ln -s ~/environment/tmux/tmux.conf ~/.tmux.conf
ln -s ~/environment/tmux/ ~/.tmux

#install homebrew
echo 'Installing home brew'
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

#Setup Vundler
echo 'Setting up VIM environment'
(cd ~/environment && git submodule init && git submodule update)

#Tell VIM to install all the things and exit
echo 'Installing VIM bundles'
nvim -c PlugInstall -c q -c q

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
