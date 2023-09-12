pushd .

cd ~/Downloads
git clone git@github.com:ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
cd ..
rm -rf nerd-fonts

popd
