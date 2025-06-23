!/bin/bash
USUARIO_PASS=$1
LISTA=$2
CONTRA=$(sudo grep $USUARIO_PASS /etc/shadow | awk -F ':' '{print $2}')
ANT_IFS=$IFS
IFS=$'\n'
for LINEA in `cat $LISTA |  grep -v ^#`
do
	USUARIO=$(echo  $LINEA |awk -F ',' '{print $1}')
	GRUPO=$(echo  $LINEA |awk -F ',' '{print $2}')
	HOME_USR=$(echo $LINEA | awk -F ',' '{print$3}')
	sudo groupadd $GRUPO
	sudo useradd -d $HOME_USR -p "$CONTRA" -s /bin/bash -g $GRUPO $USUARIO
done
IFS=$ANT_IFS
