declare scriptUrl="https://raw.githubusercontent.com/AZMCode/git-credential-bw-shell/master/git-credential-bw"
if [ -d ~/.local/bin ]; then
	curl "$scriptUrl" > ~/.local/bin/git-credential-bw
	chmod +x ~/.local/bin/git-credential-bw
else
	sudo curl "$scriptUrl" > /usr/bin/git-credential-bw
	sudo chmod +x ~/.local/bin/git-credential-bw
fi
git config --global --add credential.helper bw
