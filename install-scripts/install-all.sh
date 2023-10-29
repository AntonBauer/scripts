#!/usr/bin/env bash
sudo apt-get update
sudo apt update

BASEDIR=$(dirname $0)

$BASEDIR/podman-install.sh
$BASEDIR/curl-install.sh
$BASEDIR/pass-install.sh
$BASEDIR/git-install.sh
$BASEDIR/github-cli-install.sh
$BASEDIR/ripgrep-install.sh
$BASEDIR/nerd-fonts-install.sh
$BASEDIR/nvim-install.sh
$BASEDIR/proton-vpn-install.sh
$BASEDIR/dotnet-install.sh
