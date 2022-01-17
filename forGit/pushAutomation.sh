#!/bin/bash

echo "Provide the name of the file to push or write 'all'"
read name

echo "Provide the path to the local repo"
read path

echo "Provide commit message"
read message

if [[ "$name" -eq "all" ]]
then
    cd "$path" 
    git add -A
    git commit -m "$message"
    git push $(git remote) $(git branch | sed -n '/\* /s///p')  
else 
    echo "Some of the arguments weren't specified"
fi