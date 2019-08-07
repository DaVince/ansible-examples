#!/bin/bash
clear
echo Make sure to run this in Docker only! Otherwise, please quit now.

PS3='Please enter your choice: '
options=("Example 1" "Example 2" "Example 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Example 1")
            echo "Starting example 1."
            cd example1
            ansible-playbook site.yml
            break
            ;;
        "Example 2")
            echo "you chose choice 2"
            break
            ;;
        "Example 3")
            echo "you chose choice $REPLY which is $opt"
            break
            ;;
        "Quit")
            bash
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done