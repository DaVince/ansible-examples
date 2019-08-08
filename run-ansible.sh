#!/bin/bash
clear
echo Make sure to run this in Docker only! Otherwise, please quit now or it will affect your development system.

PS3='Please enter your choice: '
options=("Example 1: perform ping and copy file" "Example 2: create folder, copy file, delete" "Example 3: simple Apache website deployment" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Example 1: perform ping and copy file")
            echo "Starting example."
            echo "$ ansible-playbook -v -c local 01-ping-and-copy.yml"
            ansible-playbook -v -c local 01-ping-and-copy.yml
            bash
            break
            ;;
        "Example 2: create folder, copy file, delete")
            echo "Starting example."
            echo "$ ansible-playbook -v -c local 02-create-copy-delete.yml"
            ansible-playbook -v -c local 02-create-copy-delete.yml
            bash
            break
            ;;
        "Example 3: simple Apache website deployment")
            echo "Starting example."
            echo "cd example1"
            echo "$ ansible-playbook -v -c local site.yml"
            cd example1
            ansible-playbook -v -c local site.yml
            bash
            break
            ;;
        "Quit")
            bash
            break
            ;;
        *) echo "Please enter 1, 2, 3 or 4.";;
    esac
done
