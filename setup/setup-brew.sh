#! /bin/sh

if ! command -v brew 
then
	echo "Installing Homebrew"
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else 
	echo "Homebrew already installed"
fi

if command -v brew 
then
	echo "installing software with brew"
	brew install \
		tldr \
		ctop \
		htop \
		derailed/k9s/k9s \
		autojump \
		mitmproxy \
		tree \
		node \
		nvm \
		python-yq \
		ansible \
		jesseduffield/lazydocker/lazydocker \
		mvn \
		dive \
		romkatv/powerlevel10k/powerlevel10k \
		pyenv \
		duf
		
	if test -d ~/.nvm 
	then
		echo "Nvm folder ~/.nvm already exists" 
	else
		echo "Setting up nvm"
		mkdir ~/.nvm
		echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
		echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.zshrc
		echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc
		source ~/.zshrc
	fi
fi