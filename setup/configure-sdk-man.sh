#! /bin/sh

if command -v sdk
then
	echo "Sdkman already installed"
else
	curl -s "https://get.sdkman.io" | bash
	echo "Installing Java 11 and 17"
	sdk install java 11.0.16-zulu
	sdk install java 17.0.4-zulu
fi