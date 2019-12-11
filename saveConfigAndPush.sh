#!/bin/bash
cat ~/.gitconfig > gitconfig
cat ~/.zshrc > zshrc

git add .
git commit -m "update git config, bash_profile, zshrc"

git pull
git push
echo "Done"
