#!/usr/bin/env bash
wget -O ~/Downloads/protonvpn-stable.deb https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3_all.deb
sudo apt-get install -y ~/Downloads/protonvpn-stable.deb
sudo apt-get update
sudo apt-get install -y protonvpn-cli
rm ~/Downloads/protonvpn-stable.deb
