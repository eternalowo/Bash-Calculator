#!/bin/bash

# Регулярные выражения для проверки, является ли число вещественным или целочисленным
regex_fl='^[0-9]+([.][0-9]+)?$'
regex_int='^[0-9]+$'

echo "$(date "+%Y-%m-%d") ПМИ-$1, Бригада: $2"
while true
do
  while true
  do
    echo "Введите значение первого числа: "
    read a
    echo "Введите значение второго числа: "
    read b
    # Если оба введёных значения являются числами
    if [[ $a =~ $regex_fl ]] && [[ $b =~ $regex_fl ]]; then
      #Прекращаем ввод и проверку и переходим к меню 
      break
    else
      echo "Ошибка! Некорректный ввод! Вводите числа!"
    fi
  done

  echo "Выберите операцию (Номер операции): "
  echo "1 - Сложение"
  echo "2 - Вычитание"
  echo "3 - Умножение"
  echo "4 - Деление"
  echo "5 - Выход"
  read operation
  
  case $operation in 
  1)
    sh sum.sh $a $b
  ;;
  2) 
    sh dif.sh $a $b
  ;;
  3)
    sh mul.sh $a $b
  ;;
  4) 
    sh div.sh $a $b
  ;;
  5)
    break
  ;;
  *)
    echo "Введён неверный номер операции!"
    echo "Введён неверный номер операции!" > result.txt
  esac
done
