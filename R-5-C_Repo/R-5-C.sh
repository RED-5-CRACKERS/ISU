#!/bin/bash
cd
mkdir R-5-C
cd R-5-C

echo "                  [ R-5-C ]               "
echo  "      [TOOL]                  [DISCRIPT]      "
echo  " [1] Uni-CRACKER              Hash cracker    "
echo  " [2] Hash_Creator             Hash creater    "
echo  " [3] ALL     "
echo -n" [OPTION]|> "
read opt
if [ $opt = '1' ]
then
    git clone https://www.github.com/RED-5-CRACKERS/Uni-cracker.git
elif [ $opt = '2' ]
then
    git clone https://www.github.com/RED-5-CRACKERS/Hash_creator.git
elif [ $opt = '3' ]
then
    git clone https://www.github.com/RED-5-CRACKERS/ISU.git
elif [ $opt = 'a' ]
then
    git clone https://www.github.com/RED-5-CRACKERS/Uni-cracker.git
