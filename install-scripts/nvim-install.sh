#!/usr/bin/env bash

pushd .
cd ~/Downloads
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
sudo mv ./nvim-linux64 /usr/local/bin/ 

echo "if [ -d /usr/local/bin/nvim-linux64 ]; then PATH = $PATH:/usr/local/bin/nvim-linux64/bin fi" >> ~/.bashrc
