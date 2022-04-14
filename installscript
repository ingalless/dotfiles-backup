#!/bin/bash

# Hide "last login" line when starting a new terminal session
touch $HOME/.hushlogin

# Install zsh
echo 'Install oh-my-zsh'
echo '-----------------'
rm -rf $HOME/.oh-my-zsh
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Install Python
echo 'Install python'
echo '--------------'
sudo apt-get install -y python3

# Install pip
echo 'Install pip'
echo '-----------'
sudo apt-get install -y python3-pip

# Install nvm
echo 'Install nvm'
echo '-----------'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Install node
echo 'Install node'
echo '------------'
nvm install node

# Install ripgrep
echo 'Install ripgrep'
echo '---------------'
sudo apt-get install -y ripgrep

# Install neovim
echo 'Install neovim'
echo '--------------'
sudo apt install neovim

# Install intelephense
echo 'Install intelephense'
echo '--------------------'
npm i -g intelephense
echo '--------------------'
echo 'Please provide your intelephense key'
read -s -p INTELEPHENSE_KEY
if test -z "$INTELEPHENSE_KEY"; then
    echo 'Creating licence.txt...'
    echo $INTELEPHENSE_KEY > $HOME/intelephense/licence.txt
    echo 'Created licence.txt in ${HOME}/intelephense/licence.txt!'
else
    echo 'Skipping intelephense premium configuration.'
    echo 'See https://github.com/yaegassy/coc-intelephense#enabling-the-premium-feature'
fi

# Symlink zsh prefs
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink neovim prefs
rm -rf $HOME/.config/nvim/
ln -s $HOME/.dotfiles/nvim $HOME/.config/nvim/
