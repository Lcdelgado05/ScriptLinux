#!/bin/bash
opcion=0 
while [ $opcion = 0 ]; do
clear 


echo "					███████╗███╗░░░███╗██████╗░░█████╗░░██████╗░██╗░░░██╗███████╗████████╗░█████╗░██████╗░░█████╗░"
echo "					██╔════╝████╗░████║██╔══██╗██╔══██╗██╔═══██╗██║░░░██║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗"
echo "					█████╗░░██╔████╔██║██████╔╝███████║██║██╗██║██║░░░██║█████╗░░░░░██║░░░███████║██║░░██║██║░░██║"
echo "					██╔══╝░░██║╚██╔╝██║██╔═══╝░██╔══██║╚██████╔╝██║░░░██║██╔══╝░░░░░██║░░░██╔══██║██║░░██║██║░░██║"
echo "					███████╗██║░╚═╝░██║██║░░░░░██║░░██║░╚═██╔═╝░╚██████╔╝███████╗░░░██║░░░██║░░██║██████╔╝╚█████╔╝"
echo "					╚══════╝╚═╝░░░░░╚═╝╚═╝░░░░░╚═╝░░╚═╝░░░╚═╝░░░░╚═════╝░╚══════╝░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░░╚════╝░"
echo ""
echo ""
        echo 1. Empaquetar archvio .tar
        echo 2. Empauqetar archivo .tar.gz
        echo 3. Empaquetar archivo .zip 
        echo 4. Empaquetar archivo .rar 
        echo 5. Salir 
        
                 read opcion
echo ""
echo ""

case $opcion in 
         
                1) 
		echo 1. Empaquetar archvio .tar
		echo 2. Desempauqetar archivo .tar 
		read opc 
		echo ""
		echo "" 
                                  
                    
if [ $opc -eq "1" ]
then
                               echo Digite la direccion del directorio que desea empaquetar como archivo .tar
                               read dir
                               echo Digite el nombre del directorio que desea empaquetar
                               read nom
                               cd $dir 
                               tar cvf $nom.tar $nom
elif [ $opc -eq "2"  ]
then
                                echo Digite la direccion del directorio que desea desmpaquetar
                    		read dir 
                    		echo Digite el nombre del directorio que desea empaquetar
                                read nom
                                cd $dir 
                                tar xvf $nom.tar $nom 
                               
else
    echo "Has digitado algo mal porfavor intente denuevo "
fi  ;;
                    
                
                               
                2)  		
                echo 1. Empaquetar archvio .tar.gz
		echo 2. Desempauqetar archivo .tar.gz 
		read opc 
                                  
                    
if [ $opc -eq "1" ]
then
                               echo Digite la direccion del directorio que desea empaquetar como archivo .tar.gz
                               read dir
                               echo Digite el nombre del directorio que desea empaquetar
                               read nom
                               cd $dir 
                               tar czvf $nom.tar.gz $nom
elif [ $opc -eq "2"  ]
then
                                echo Digite la direccion del directorio que desea desmpaquetar
                    		read dir 
                    		echo Digite el nombre del directorio que desea empaquetar
                                read nom
                                cd $dir 
                                tar xzvf $nom.tar.gz $nom 
                               
else
    echo "Has digitado algo mal porfavor intente denuevo "
fi 
;;
               
                
                3)                 echo 1. Empaquetar archvio .zip
		echo 2. Desempauqetar archivo .zip
		read opc 
                                  
                    
if [ $opc -eq "1" ]
then
                               echo Digite la direccion del directorio que desea empaquetar como archivo .zip
                               read dir
                               echo Digite el nombre del directorio que desea empaquetar
                               read nom
                               cd $dir 
                               zip -r $nom.zip $nom 
elif [ $opc -eq "2"  ]
then
                                echo Digite la direccion del directorio que desea desmpaquetar
                    		read dir 
                    		echo Digite el nombre del directorio que desea empaquetar
                                read nom
                                cd $dir 
                                unzip  $nom.zip
fi
;; 
                
                4)  echo 1. Empaquetar archvio .rar
                    echo 2. Desempauqetar archivo .rar 
                    read opc 
                                  
                    
if [ $opc -eq "1" ]
then
                               echo Digite la direccion del directorio que desea empaquetar como archivo .rar
                               read dir
                               echo Digite el nombre del directorio que desea empaquetar
                               read nom
                               cd $dir 
                               rar a $nom.rar $nom
elif [ $opc -eq "2"  ]
then
                                echo Digite la direccion del directorio que desea desempaquetar
                    		read dir 
                    		echo Digite el nombre del directorio que desea empaquetar
                                read nom
                                cd $dir 
                                unrar x $nom.rar 
                               
else
    echo "Has digitado algo mal porfavor intente de nuevo "
fi  ;;
                
                5) sh Menu.sh ;;
          
                
                *) echo Opcion no valida, porfavor volver a intentarlo 
               
                esac
                sleep 2
                echo Digite 0 si quiere continuar usando la Calculadora de lo contrario digite 1 
                read opcion
                clear 
              
              
               
done 
