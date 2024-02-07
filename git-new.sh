#!/bin/bash
if [ -z "$1" ]; then
    echo "Error: Please provide a name for the git repo (example:git@github.com:mittoalb/bash_scripts.git)"
    echo "Usage: $0 <environment_name>"
    exit 1
fi


echo "# bash_scripts" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin $1

#Example of input
#git@github.com:mittoalb/bash_scripts.git
git push -u origin main
