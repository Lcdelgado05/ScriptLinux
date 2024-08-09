#!/bin/bash
opcion=0
while [ $opcion = 0 ]; do
clear

echo "					░█████╗░██████╗░░█████╗░██╗░░██╗██╗██╗░░░██╗░█████╗░░██████╗"
echo "					██╔══██╗██╔══██╗██╔══██╗██║░░██║██║██║░░░██║██╔══██╗██╔════╝"
echo "					███████║██████╔╝██║░░╚═╝███████║██║╚██╗░██╔╝██║░░██║╚█████╗░"
echo "					██╔══██║██╔══██╗██║░░██╗██╔══██║██║░╚████╔╝░██║░░██║░╚═══██╗"
echo "					██║░░██║██║░░██║╚█████╔╝██║░░██║██║░░╚██╔╝░░╚█████╔╝██████╔╝"
echo "					╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░░╚═╝░░░░╚════╝░╚═════╝░"
echo ""
echo ""

		echo 1. Crear directorio 
		echo 2. Crear archivo de texto 
		echo 3. Eliminar archivos o directorios
		echo 4. Mover archivos o directorios 
		echo 5. Modificar archivos de texto 
 		echo 6. Modificar permisos de archivos y directorios 
		echo 7. Salir 
		read opc
		
	case $opc in 
		1)echo Digite la direccion donde desea que se ubique el directorio 
		read dir 
		echo Digite el nombre que desea ponerle al directorio 
		read nom
		cd $dir 
		mkdir $nom ;;
		 
		2)echo Digite la direccion donde desea que se ubique el archivo de texto
		read dir 
		echo Digite el nombre que desea ponerle al archivo 
		read nom
		cd $dir 
		touch $nom ;; 
		
		3)echo Digite la direccion donde se encuentra el archivo o el directorio que desea eliminar 
		read dir 
		echo Digite el nombre del archivo o directorio 
		read nom
		cd $dir 
		rm -ri " $nom "
		;; 
		
		4)echo Digite la direccion donde se encuentra el archivo o directorio que desea mover
		read dir 
		echo Digite el nombre del archivo 
		read nom
		echo Digite la direccion donde quiere que se ubique la carpeta o directorio 
		read dir2 
		cd $dir
		mv  $nom $dir2;; 
		
		5)echo Digite la direccion donde se encuentra el archivo de texto que desea modificar 
		read dir 
		echo Digite el nombre del archivo 
		read nom
		cd $dir 
		nano " $nom " ;; 
		
		6) echo Digite la direccion donde se encuentra el archivo al que le desea modificar los permisos
		read dir 
		echo Digite el nombre del archivo 
		read nom
		cd $dir 
		echo Digite el codigo de permisos que quiere implementar sobre el archivo
		read cod
		chmod $cod $nom ;; 
		
		7) sh Menu.sh;;
		*) echo Opcion no valida, porfavor volver a intentarlo 
	esac 
	echo digite 0 si quiere continuar usando el programa de lo contrario digite 1 
	read opcion 
done 	 
