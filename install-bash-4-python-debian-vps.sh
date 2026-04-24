#!/bin/bash

# install-bash-4-python-debian-vps.sh
# 

echo "starting Batch ~@install-bash-4-python-debian-vps.sh";

apt update
apt install python3-pip ffmpeg -y

# insteat of installing 
# opencv, numpy + mutagen
# with pip from requierements.txt
apt install python3-opencv python3-numpy python3-mutagen -y

echo "finished Batch ~@install-bash-4-python-debian-vps.sh";

# If needed then uncomment the following:
: '

while :
do
	
	echo "starting Bot ~@save_restricted";
	python3 -m Safe_repo --break-system-packages
	sleep 10
  
done

'
