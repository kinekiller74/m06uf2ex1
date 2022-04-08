#!/bin/bash

if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 3 
fi

clear

echo "digam el nom del paquet que vols instalar"
read paquete

apt-get install $paquete

echo "S'ha instalat  el paquet $paquet"

echo "Vols continuar? (Escriu ""1"" si vols, escriu ""0"" si no vols)"
read respuesta
while [[ $respuesta == "1" ]]
do 
clear
echo "digam el nom del paquet que vols instalar"
read paquete

apt-get install $paquete

echo "S'ha instalat  el paquet $paquet"

echo "Vols continuar? (Escriu ""1"" si vols, escriu ""0"" si no vols)"
read respuesta
done

exit 20
