#!/bin/bash
opcion=0
while [ $opcion = 0 ]; do

clear
echo "					██████╗░███████╗██████╗░"
echo "					██╔══██╗██╔════╝██╔══██╗"
echo "					██████╔╝█████╗░░██║░░██║"
echo "					██╔══██╗██╔══╝░░██║░░██║"
echo "					██║░░██║███████╗██████╔╝"
echo "					╚═╝░░╚═╝╚══════╝╚═════╝░"
echo "" 
echo "" 

		echo 1. Ver informacion de tajeta de red
		echo 2. Cambiar ip
		echo 3. Prueba de conectividad  
		echo 4. Deshabilitar / habilitar tarjeta de red 
		echo 5. salir 
		read opc
		echo ""
		echo "" 
		
	case $opc in 
		1)  ifconfig;;
		
		2)echo Digite la ip que desea utilizar
		read ip 
		sudo ifconfig eth0 $ip netmask 255.255.255.0;;
		
		3) ping -c 5 www.google.com
		;;
		
		4) 
		 echo Si quiere activar internet digite 1 o si quiere deshabilitarlo digite 0
		 read opc2
		
		if [ $opc2 -eq "1" ]
			then
					sudo ifconfig eth0 up
					
					sleep 2
					echo Se ha habilitado la tarjeta de red

			elif [ $opc2 -eq "0"  ]
			then                   
			                  sudo ifconfig eth0 down
			                  sleep 2 
			                  echo se ha deshabilitado la tarjeta de red 
			else
			    echo "Has digitado un numero fuera del rango espesificado, intente denuevo "
			fi ;;
		
		
		5) sh Menu.sh ;;
		*) echo Opcion no valida, porfavor volver a intentarlo 
		 
	esac 
	echo ""
	echo ""
	echo digite 0 si quiere continuar usando el programa de lo contrario digite 1 
	read opcion 
done 	 
