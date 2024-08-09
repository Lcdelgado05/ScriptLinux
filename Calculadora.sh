#!/bin/bash
opcion=0 
while [ $opcion = 0 ]; do
clear 



echo "					░█████╗░░█████╗░██╗░░░░░░█████╗░██╗░░░██╗██╗░░░░░░█████╗░██████╗░░█████╗░██████╗░░█████╗░"
echo "					██╔══██╗██╔══██╗██║░░░░░██╔══██╗██║░░░██║██║░░░░░██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗"
echo "					██║░░╚═╝███████║██║░░░░░██║░░╚═╝██║░░░██║██║░░░░░███████║██║░░██║██║░░██║██████╔╝███████║"
echo "					██║░░██╗██╔══██║██║░░░░░██║░░██╗██║░░░██║██║░░░░░██╔══██║██║░░██║██║░░██║██╔══██╗██╔══██║"
echo "					╚█████╔╝██║░░██║███████╗╚█████╔╝╚██████╔╝███████╗██║░░██║██████╔╝╚█████╔╝██║░░██║██║░░██║"
echo "					░╚════╝░╚═╝░░╚═╝╚══════╝░╚════╝░░╚═════╝░╚══════╝╚═╝░░╚═╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝"
echo ""
echo ""

echo  Digite  el primer numero a operar 
read num1 
echo Digite el segundo numero a operar 
read num2 
echo ""
echo ""
        echo 1. Sumar
        echo 2. Restar
        echo 3. Multiplicar
        echo 4. Dividir
        echo 5. Salir 
        
                 read opcion
echo ""
echo ""

case $opcion in 
         
                1) Suma=$(expr $num1 + $num2)
                echo "La Suma de $num1 + $num2 = $Suma" ;;
                
                               
                2) Resta=$(expr $num1 - $num2) 
                echo "La Resta de $num1 - $num2 = $Resta" ;;
               
                
                3) Multiplicar=$(( $num1 * $num2))
                echo "La Multiplicacion de $num1 x $num2 = $Multiplicar" ;; 
                
                4) Dividir=$(expr $num1 / $num2) 
                echo "La Division de $num1 entre $num2 = $Dividir" ;;
                
                5) sh Menu.sh ;;
          
                
                *) echo Opcion no valida, porfavor volver a intentarlo 
               
                esac
                echo Digite 0 si quiere continuar usando la Calculadora de lo contrario digite 1 
                read opcion
                clear 
              
              
               
done 
echo Redirigiendo a Menu inicial...
sleep 3
sh Menu.sh
