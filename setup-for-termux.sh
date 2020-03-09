#!/bin/bash

cp isu.py /data/data/com.termux/files/usr/bin/isu
chmod +x /data/data/com.termux/files/usr/bin/isu
chmod +x isu.py
rm -v setup-for-termux.sh setup.sh
echo "[*] simply isu"
echo
echo
echo
echo -n "[ IF YOU WANT TO INSTALL MY ANOTHER SCRIPTS [Y|N]] > "
read ins
if [ $ins = 'y' ]
then
    echo [THANKS]
    git clone https://github.com/RED-5-CRACKERS/Uni-cracker.git
elif [ $ins = 'n']
then
    echo [ BYE.... ]
fi
isu -h

