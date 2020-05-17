#!/bin/bash
echo -e "Deploying updates to GitHub..."

# Build the project.
/usr/local/bin/hugo  # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git pull origin master --rebase
git push origin master

# Come Back up to the Project Root
cd ..

git push origin master
