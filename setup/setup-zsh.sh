#! /bin/sh

if ! command -v zsh
then 
	brew install \
		zsh
	echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc
fi

if test -d ~/.oh-my-zsh
then
	echo "Oh My Zsh already installed"
else
	echo "Installing Oh My Zsh!"
	zsh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git
	source zsh-snap/install.zsh
	
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	git clone https://github.com/matthieusb/zsh-sdkman.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-sdkman
	echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
fi
