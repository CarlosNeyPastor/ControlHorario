#! /bin/bash

fecha=$(date +"%d %m")
hora=$(date +"%R")

clear
echo " ###########################"
echo " # Registro de funcionarios#"
echo " ###########################"
echo ""
echo " Seleccione una acción:"
echo ""
echo " 1 - Registrar entrada"
echo " 2 - Registrar salida"
echo ""

read INPUT

case $INPUT in

	1)
		clear	
		echo 'Digite su numero de funcionario: '
			read CI
		salida=$(date +"%Y%m"-$CI)
		mkdir Registros
		cd Registros
		echo "Entrada;$CI;$fecha;$hora">> $salida.xls
		cd ..
		clear
		./registro.sh
		;;
	2)
		clear
		echo 'Digite numero de funcionario: '
			read CI
		salida=$(date +"%Y%m"-$CI)
		mkdir Registros
		cd Registros
		echo "Salida;$CI;$fecha;$hora">> $salida.xls
		cd ..
		clear
		./registro.sh
		;;
	r)	
		clear
		./registro.sh
		;;
	*)
		clear
		echo 'Seleccione una opción valida'
		sleep 0,5 
		clear
		./registro.sh
		;;
	
esac
