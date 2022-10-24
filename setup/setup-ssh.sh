#! /bin/sh

ssh_key_file=~/.ssh/sec
echo "Generating ssh-key $ssh_key_file"
if [ -f "$ssh_key_file" ]
then
	echo "$sh_key_file found."
	echo "$ssh_key_file already exists"	
else
	echo "$ssh_key_file doesnt exist"
	echo "Generating SSH-Key, enter e-mail"
	read mail
	ssh-keygen -t ed25519 -C $mail -f $ssh_key_file
	chmod 600 $ssh_key_file*
	echo "generated keys $ssh_key_file"
fi

echo "Configure ssh"
if test -f $ssh_key_file; then
	echo "Printing public key to keyboard:"
	cat ~/.ssh/sec.pub
	if [[ "$OSTYPE" == "darwin"* ]]; then
		echo "Copying sec.pub to clipboard"
		pbcopy < $ssh_key_file.pub
	fi

	echo "creating ssh-config file"
	if test -f ~/.ssh/config; then
		echo "~/.ssh/config file already exists"
	else
		echo "Host *\n \tAddKeysToAgent yes\n\tUseKeychain yes\n\tIdentityFile $ssh_key_file" > ~/.ssh/config	
		echo "ssh-config file created\n$(cat ~/.ssh/config)"
	fi	
fi