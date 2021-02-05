#!/usr/bin/env bash
# -*- ENCODING: UTF-8 -*-
#Script name	:lansee
#Description	:
#Author       	:Yago López Prado
#license        :https://github.com/Perkybeet/bash-scripts/blob/main/LICENSE
#Email         	:"yago2003.lopez@gmail.com"
#---------------------------------------------------------------------------


############################
##     INSTRUCCIONES      ##
############################
## Script para detectar intrusos en una red utilizando nmap

############################
##       CONSTANTES       ##
############################
AM="\033[1;33m"  ## Color Amarillo
RO="\033[1;31m"  ## Color Rojo
VE="\033[1;32m"  ## Color Verde
CL="\e[0m"       ## Limpiar colores

###########################
##       VARIABLES       ##
###########################
RED=''  ## Dirección y máscara de red, si está vacío se pedirá después
LOGRED='/tmp/detectar_intrusos.log'  ## Archivo de log

###########################
##       EJECUCIÓN       ##
###########################

if [[ ! -x '/usr/bin/nmap' ]]; then
    echo -e "$RO No tienes$AM nmap$RO instalado en el equipo$CL"
    echo -e "$VE Puedes instalarlo con:$AM sudo apt install nmap$CL"
    exit 1
fi

if [[ "$RED" = '' ]]; then
    echo -e "$VE Introduce la dirección de la red$CL"
    echo -e "$VE Si tu router es$RO 192.168.1.1$VE la dirección de la red$CL"
    echo -e "$VE y los bits, puede ser $RO 192.168.1.0/24$VE si es de 24 bits$CL"
    read -p '  → ' RED
fi

if [[ "$RED" != '' ]]; then
    nmap -sPn $RED | tee -a $LOGRED
else
    echo -e "$RO La dirección de la red está vacía, saliendo del script$CL"
    exit
fi

echo -e "$RO Proceso completado$CL"

exit 0
