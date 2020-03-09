#!/bin/bash

cp isu.py /data/data/com.termux/files/usr/bin/isu
chmod +x /data/data/com.termux/files/usr/bin/isu
chmod +x isu.py
rm -v setup-for-termux.sh setup.sh
echo [*] simply isu
isu -h
