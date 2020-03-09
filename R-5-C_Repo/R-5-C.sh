#!/bin/bash
cd
mkdir R-5-C
cd R-5-C

echo "                  [ R-5-C ]               "
echo  "      [TOOL]                  [DISCRIPT]      "
echo  " [1] Uni-CRACKER              Hash cracker    "
echo  " [2] Hash_Creator             Hash creater    "
echo  " [3] ISU                      portScanner"
echo  " [a] ALL     "
echo -n " [OPTION]|> "
read opt
if [ $opt = '1' ]
then
    git clone https://www.github.com/RED-5-CRACKERS/Uni-cracker.git
elif [ $opt = '2' ]
then
    https://github.com/RED-5-CRACKERS/creat_hash.git
elif [ $opt = '3' ]
then
    git clone https://www.github.com/RED-5-CRACKERS/ISU.git
elif [ $opt = 'a' ]
then
    git clone https://www.github.com/RED-5-CRACKERS/Uni-cracker.git
    git clone https://www.github.com/RED-5-CRACKERS/creat_hash.git
    git clone https://www.github.com/RED-5-CRACKERS/ISU.git
fi

