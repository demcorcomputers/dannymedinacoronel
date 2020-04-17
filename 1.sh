#!/bin/bash
clear
#######COMPROVANT SI L'ARXIU DE GUIÓ L'EXECUTA L'USUARI ROOT###################
if (( EUID != 0 ))
then
    echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
    exit 9 # He posat aquest número per assegurar-me que no coincideix amb cap altre valor de retorn
fi
########################FINALITZANT###################################
###########RECOLLINT DADES DE L'USUARI A ESBORRAR I DE LA MANERA D'ESBORRAR-LO####################
echo "PROGRAMA PER ESBORRAR USUARIS"
echo
echo -n "Dona el nom de usuari: "
read $nom_usuari
echo -n "Vols cambiar la contraseña del'usuari" $nom_usuari

exit 0