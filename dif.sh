#!/bin/bash
regex_fl='^[0-9]+([.][0-9]+)?$'
# Если оба числа не вещественные
if ( ! [[ $1 =~ $regex_fl ]] && ! [[ $2 =~ $regex_fl ]]); then
    echo $(("$1 - $2"))
    echo $(("$1 - $2")) > result.txt
else
    echo $(bc<<<"scale=3;$1-$2")
    echo $(bc<<<"scale=3;$1-$2") > result.txt
fi
