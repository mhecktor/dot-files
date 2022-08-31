#! /bin/sh

if [[ "$OSTYPE" == "darwin"* ]]; 
then
	echo "installing brew cask"
	brew install --cask \
		visual-studio-code \
		alfred \
		cheatsheet \
		1password \
		intellij-idea \
		firefox \
		google-chrome \
		brave-browser \
		docker \
		iterm2 \
		pycharm \
		postman 

	echo "Install Greenshot and Magnet manually!"
else
	"No brew casks installed, OS isnt darwin"
fi