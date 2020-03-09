#!/bin/bash
sudo apt install python3
cp isu.py /bin/isu
chmod +x /bin/isu
rm setup.sh setup-for-termux.sh
chmod -w isu.py
chmod +x isu.py
echo simply type isu

echo -n "[ YOU WANT TO DOWNLOAD 'UNI-CRACKER' ] > "
read ins
while true
do
  if [ $ins = 'y' ]
  then
    git clone https://www.github.com/RED-5-CRACKERS/Uni-cracker.git
    echo [ THANKS ! ]
  elif [ $ins = 'n' ]
  then
    echo [ BYE ... ]
    break
  fi
done
isu -h
