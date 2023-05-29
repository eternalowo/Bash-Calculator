#!/bin/bash
regex_fl='^[0-9]+([.][0-9]+)?$'
# Если оба числа не вещественные
if ! (( $(echo "$2 == 0" |bc -l) )); then
  if ( ! [[ $1 =~ $regex_fl ]] && ! [[ $2 =~ $regex_fl ]]); then
      echo $(("$1 / $2"))
      echo $(("$1 / $2")) > result.txt
  else
      echo $(bc<<<"scale=3;$1/$2")
      echo $(bc<<<"scale=3;$1/$2") > result.txt
  fi
else
  echo "Ошибка! На ноль делить нельзя!"
  echo "Ошибка! На ноль делить нельзя!" > result.txt
  exit
fi
