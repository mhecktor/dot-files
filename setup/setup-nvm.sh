#! /bin/sh

if command -v nvm
then
	echo "Installing node v16"
	nvm install 16
else
	echo "NVM is not installed"
fi