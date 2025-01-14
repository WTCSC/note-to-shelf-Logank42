#!/bin/bash

filename='notes.txt'
#

if [ $1 = "add" ]; then
    if [ $2 != "" ]; then
        timestamp=$(date +"%Y-%m-%d %H:%M:%S")
        echo $timestamp + $2>> $filename

    else
        echo 'Error. Must have a message input after "add."'
        exit 1
    fi

elif [ $1 = "list" ]; then
    cat notes.txt

elif [ $1 = "search" ]; then
    if [ $2 != "" ]; then
        grep $2 $3

    elif [ $3 != "" ]; then
        echo 'Error. Must have a file name.'
        exit 1

    else
        echo 'Error. Must have a message input after "search."'
        exit 1
    fi

else
    echo "Command not found. Valid commands: add, list, search."
    exit 1
fi