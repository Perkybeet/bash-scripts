#!/bin/bash

#---------------------------------------------------------------------------
#Script name	:adduser
#Description	:
#Author       	:Yago López Prado
#license        :https://github.com/Perkybeet/bash-scripts/blob/main/LICENSE
#Email         	:"yago2003.lopez@gmail.com"
#---------------------------------------------------------------------------

#adduser script
echo "Nombre del usuario a crear?"
read name
sudo adduser $name
    if [ $? = 0 ]
    then 
        echo "Hecho"
        exit 0
        else 
        clear
        echo "Error al crear el usuario o el usuario ya existe"
        echo "Crear otro usuario? (s/n)"
        read again
            if [ $again = "s" ]
            then
                ~/adduser.sh
            else
                exit 0
            fi
