#!/bin/bash
opcion=0
while [ $opcion = 0 ]; do
clear
echo "					██████╗░██████╗░░█████╗░░█████╗░███████╗░██████╗░█████╗░░██████╗"
echo "					██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗██╔════╝"
echo "					██████╔╝██████╔╝██║░░██║██║░░╚═╝█████╗░░╚█████╗░██║░░██║╚█████╗░"
echo "					██╔═══╝░██╔══██╗██║░░██║██║░░██╗██╔══╝░░░╚═══██╗██║░░██║░╚═══██╗"
echo "					██║░░░░░██║░░██║╚█████╔╝╚█████╔╝███████╗██████╔╝╚█████╔╝██████╔╝"
echo "					╚═╝░░░░░╚═╝░░╚═╝░╚════╝░░╚════╝░╚══════╝╚═════╝░░╚════╝░╚═════╝░"
echo ""
echo ""

		echo 1. Lista de procesos 
		echo 2. Ejecutar procesos
		echo 3. Eliminar Procesos 
		echo 4. Priorizar procesos
		echo 5. salir 
		read opc
		
	case $opc in 
		1)ps -e;;
		
		2) ;;
		
		3) echo Digite el ID del proceso que desea detener 
		read prc
		kill $prc 
		;;
		4) echo Digite el ID del proceso que desea priorizar 
		read prc 
		echo Digite de 0 a 10 el nivel de prioridad que le quiere dar a el proceso 
		read nv 
		sudo renice -n $nv -p $prc;;
		
		5) sh Menu.sh ;;
		*) echo Opcion no valida, porfavor volver a intentarlo 
		 
	esac 
	echo digite 0 si quiere continuar usando el programa de lo contrario digite 1 
	read opcion 
done 	 
