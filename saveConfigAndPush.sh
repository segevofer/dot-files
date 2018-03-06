#!/bin/bash
cat ~/.gitconfig > gitconfig
git add gitconfig
git commit -m "update git config"
git pull
git push
echo "Done"
