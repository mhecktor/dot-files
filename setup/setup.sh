#! /bin/sh
cd ~
echo "Starting configuration in dir $(pwd)"

sh ./setup-ssh.sh
sh ./setup-brew.sh
sh ./setup-brew-cask.sh
sh ./setup-zsh.sh
sh ./configure-hosts-file.sh
sh ./configure-sdk-man.sh

echo "You need to Install harvest manually!"

echo "Cloning repositories into ~/work/repos"
mkdir ~/work
mkdir ~/work/repos