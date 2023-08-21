#!/usr/bin/env bash

pushd .
cd ~/Downloads
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
sudo mv ./nvim-linux64 /usr/local/bin/ 

# add nvim path to PATH
echo "if [ -d /usr/local/bin/nvim-linux64 ]; then PATH = $PATH:/usr/local/bin/nvim-linux64/bin fi" >> ~/.bashrc

# set nvim as default editor
sudo update-alternatives --install /usr/bin/editor/ editor /usr/local/bin/nvim-linux64/bin/nvim 100

# clone nvim config
git clone git@github.com:AntonBauer/nvim_config.git ~/.config/nvim
