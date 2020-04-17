#!/bin/bash
########################################################################
if (( EUID != 0 ))
	then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 1 
fi
########################################################################
clear
opc="s"
while [[ $opc == "s" ]]
{
	clear
	echo -n "Indica el nom de l'usuari: "
	read usuari
	echo -n "Estàs totalment segur que vols esborrar l'usuari i el seu directori [s/n]?: "
	read resp
if [[ $resp == "s" ]]
	then
	userdel -r $usuari > /dev/null
fi
	echo -n "Vols continuar?:"
	read opc
}
exit 0