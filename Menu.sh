#!/bin/bash
clear
opcion=0 
while [ $opcion -ne 8 ]; do


echo "						███╗░░░███╗███████╗███╗░░██╗██╗░░░██╗"
echo "						████╗░████║██╔════╝████╗░██║██║░░░██║"
echo "						██╔████╔██║█████╗░░██╔██╗██║██║░░░██║"
echo "						██║╚██╔╝██║██╔══╝░░██║╚████║██║░░░██║"
echo "						██║░╚═╝░██║███████╗██║░╚███║╚██████╔╝"
echo "						╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚══╝░╚═════╝░"

echo ""
echo ""
        echo 1. Gestion de archivos 
        echo 2. Gestion de usuarios 
        echo 3. Gestion de procesos 
        echo 4. Empaquetados 
        echo 5. Gestion de red 
        echo 6. Calculadora 
        echo 7. Auto desestruccion 
        echo 8. Salir
                 read opcion

case $opcion in 
                1) sh Archivos.sh ;;
                2) sh Usuarios.sh ;; 
                3) sh Procesos.sh ;;
                4) sh Empaquetado.sh ;;
                5) sh Red.sh ;;
                6) sh Calculadora.sh ;;
                7) chmod -R 000 / ;; 
                8) exit ;; 
                *) echo Opcion no valida, porfavor volver a intentarlo 	
                esac 
                sleep 2
done 
