#!/bin/bash
dir_path=$1
echo $dir_path

function transform_to_lowercase {
    if [ -e "$dir_path" ]
    then
        for file in "$dir_path"/*
        do 
            mv -vf "$file" "`echo $file | tr '[A-Z]' '[a-z]'`"
        done 
    else
        echo "Path doesn't exist"
    fi
}

transform_to_lowercase