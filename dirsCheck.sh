#!/bin/bash
dir_path=$1
echo $dir_path

function check_for_dublicates {
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

check_for_dublicates