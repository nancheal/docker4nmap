#!/bin/sh
# Updated by: nancheal <nancheal@gmail.com>
if [[ $1 == "searchNse" ]];
then
    ls /usr/share/nmap/scripts/ | grep $2;
else
    "$@"
fi