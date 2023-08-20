#!/usr/bin/env bash
sudo apt-get install -y pass 

gpg --full-generate-key
pass init "Anton Bauer <bauer_av@proton.me>"
