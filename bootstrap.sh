#!/bin/sh

# Directory setup
mkdir -p $HOME/go
mkdir -p $HOME/workspace

# Check if homebrew exists
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Brew setup
brew update
brew tap homebrew/bundle
brew bundle --file=$HOME/dotfiles/Brewfile

# Clean up the caches
brew cleanup
brew cask cleanup

# Set the zsh as primary shell
chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
[ ! -f $HOME/.zshrc ] && ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
source $HOME/.zshrc

# Mackup config
[ ! -f $HOME/.mackup.cfg ] && ln -nfs $HOME/dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Ruby packages
gem install jekyll

# Python packages
pip3 install -r $HOME/dotfiles/requirements.txt
