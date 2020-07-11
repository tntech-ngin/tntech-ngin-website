#!/bin/bash

# Check if running inside virtual env, otherwise quit
[[ "$VIRTUAL_ENV" == "" ]]; INVENV=$?
if [ $INVENV = 0 ]; then
  echo "Virtual environment not activated. Failed."
  exit 1
fi


# Move to current directory
cd "$(dirname "$0")"
echo $PWD

echo -ne "Converting the bibtex files to site publications... "

# Import individual bibtex from documents dir and convert progressively
for entry in data/*.bib
do
  academic import --bibtex data/${entry##*/} --publication-dir ../../content/publications --overwrite
done

echo -e "Done!"
