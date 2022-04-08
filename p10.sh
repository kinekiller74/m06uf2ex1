#!/bin/bash

if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 3 
fi
clear
echo "dime el nombre de un grupo del sistema"
read grupo
echo "dime el nombre de un usuario del sistema"
read usuario
echo "Estas seguro que quieres añadir a $usuario al grupo $grupo? (Escribe ""y"" para confirmar)"
read respuesta
if  [[ $respuesta == "y" ]]

then gpasswd -a $usuario $grupo
fi
exit 3
