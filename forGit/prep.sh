#!/bin/bash

echo "Provide the path to the local repo"
read path

echo "Provide the link to remote repo"
read link

if [ ! -z $link ] || [ ! -z $path ]
then
    cd "$path" 
    git init .
    git remote add origin "$link"
else 
    echo "Some of the arguments weren't specified"
fi