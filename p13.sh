#!/bin/bash
if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 3 
fi
clear

echo -n "Indica un nom base: "
read nbase

echo -n "Indica la quantitat d'usuaris: "
read qt


echo

if [[ -e nombase.txt ]]
then
    rm nombase.txt
fi

nU=0
for (( i=1; i<=$qt; i++))
do
	ctsnya_usr=$(pwgen 10 1)
	echo "$nbase$nU@fje	$ctsnya_usr" >> nombase.txt
	((nU++))
done

exit 0
