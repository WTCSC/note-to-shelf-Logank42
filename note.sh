#!/bin/bash

filename='notes.txt' # The file where all the notes are stored

if [ $1 = "add" ]; then # Checks first arguement for the add command
    if [ "$2" != "" ]; then # Makes sure the arguement isn't empty
        timestamp=$(date +"%Y-%m-%d %H:%M:%S") # Using the date command and includes year, month, day, hour, minute, second
        echo $timestamp: $2>> $filename # Adds the time stamp and the input you gave it into the notes.txt
        echo "$2" was succesfully added to $filename

    else # Prints an error message if you dont put anything after add
        echo 'Error. Must have a message input after "add."'
        exit 1
    fi

elif [ $1 = "list" ]; then # Checks first arguement for the list command
    cat notes.txt # Prints all contents of the file

elif [ $1 = "search" ]; then # Checks first arguement for the search command
    if [ "$2" != "" ]; then # Makes sure the arguement isn't empty
        grep -i $2 $filename # Looks for the word or phrase you entered and prints any matching notes

    else # Prints an error message if you dont put anything to search
        echo 'Error. Must have a message input after "search."'
        exit 1
    fi

else # Prints an error message if you dont put in a command
    echo "Command not found. Valid commands: add, list, search."
    exit 1
fi