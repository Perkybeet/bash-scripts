#!/bin/bash

###################################################################
#Script name	:transfer.sh
#Description	:Transferir archivos en la misma red local por scp/ssh con tan solo arrastrar x archivos a x carpeta y posteriormente, ejecutar la script en el equipo en el cual se quiere recibir.
#Author       	:Yago López Prado
#Email         	:[email protected]
clear
cd /
echo "Remote host you want to access and file location:"
echo "Example: (user)@(ip):(location)"
read host
echo "Binder name where files are going to be moved:"
read nombre
echo "Location:" && echo "Example: /home/user/file \r"
read ubicacion
echo "Do you know the remote host password?"
read pass
cd /
#procesos
		if [ $pass = "si" ]
		then
			echo "====================="
			echo "Right? (y/n)"
            echo "Host  = $host"
			echo "Name  = $nombre"
			echo "Ln    = $ubicacion"
			echo "Passw = ****"
			read respuesta
				if [ $respuesta = "y" ]
				then
					cd $ubicacion
				mkdir $nombre
				cd /
                scp -r $host $ubicacion/$nombre
				echo "Connecting..."
                wait
					fi
				else
				echo "Try again later"
				[ "^C" ]
		fi
exit 1
