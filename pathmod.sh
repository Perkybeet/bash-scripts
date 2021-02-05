#!/bin/bash

#---------------------------------------------------------------------------
#Script name	:pathmod
#Description	:
#Author       	:Yago López Prado
#license        :https://github.com/Perkybeet/bash-scripts/blob/main/LICENSE
#Email         	:"yago2003.lopez@gmail.com"
#---------------------------------------------------------------------------
echo "Ruta?"
read ruta
set path=$PATH:$ruta
