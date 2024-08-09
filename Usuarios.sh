#!/bin/bash
opcion=0
while [ $opcion = 0 ]; do
clear

echo "					██╗░░░██╗░██████╗██╗░░░██╗░█████╗░██████╗░██╗░█████╗░░██████╗"
echo "					██║░░░██║██╔════╝██║░░░██║██╔══██╗██╔══██╗██║██╔══██╗██╔════╝"
echo "					██║░░░██║╚█████╗░██║░░░██║███████║██████╔╝██║██║░░██║╚█████╗░"
echo "					██║░░░██║░╚═══██╗██║░░░██║██╔══██║██╔══██╗██║██║░░██║░╚═══██╗"
echo "					╚██████╔╝██████╔╝╚██████╔╝██║░░██║██║░░██║██║╚█████╔╝██████╔╝"
echo "					░╚═════╝░╚═════╝░░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░╚════╝░╚═════╝░"
echo ""
echo ""

		echo 1. Crear Nuevo Usuario
		echo 2. Eliminar un Usuario 
		echo 3. Crear un Grupo 
		echo 4. Eliminar Grupo
		echo 5. Añadir Usuario a un Grupo
		echo 6. Eliminar Usuarui de un Grupo 
		echo 7. salir 
		read opc
		
	case $opc in 
		1)echo Digite el nombre de Usuario que desea 
		read Us
		 sudo adduser $Us ;;
		
		2) echo Digite el bombre del Usuario que desea eliminar
		read Us 
		sudo userdel  $Us ;;
		
		3) echo Digite el nombre del Grupo que quiere crear 
		read Gr
		sudo  groupadd $Gr;;
		
		4) echo Digite el nombre del Grupo que desea eliminar 
		read Gr 
		sudo groupdel $Gr;;
		
		5) echo Digite el Grupo al cual desea añadir al usuario
		read Gr 
		echo digite el nombre del Usuario que desea añadir a dicho grupo
		read Us
		sudo adduser $Us $Gr ;;
		
		6) echo Digite el nombre Grupo del cual desea eliminar el usuario 
		read Gr 
		echo digite el nombre del Usuario que desea eliminar de dicho grupo
		read Us
		sudo deluser $Us $Gr ;;
		
		
		7) sh Menu.sh ;;
		
		*) echo Opcion no valida, porfavor volver a intentarlo 
		echo ""
		echo ""
		 
	esac 
	echo digite 0 si quiere continuar usando el programa de lo contrario digite 1 
	read opcion 
done 	
 
