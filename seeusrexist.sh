#!/bin/bash

#---------------------------------------------------------------------------
#Script name	:seeusrexist
#Description	:
#Author       	:Yago López Prado
#license        :https://github.com/Perkybeet/bash-scripts/blob/main/LICENSE
#Email         	:"yago2003.lopez@gmail.com"
#---------------------------------------------------------------------------

if [ $# -le 0 ]
then
    echo "Debes especificar 1 parámetro como mínimo" 
else   
    if id -u "$1" >/dev/null 2>&1
    then
        echo "user exists"
        exit
    else
        echo "user does not exist"
        echo "You want to create it?"
        read input
            if [ $input = "s" ]
            then
                sudo adduser $1
            else
                exit
            fi
    fi   
    

fi
