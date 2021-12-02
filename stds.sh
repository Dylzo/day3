#!/bin/bash

#set -e
 
## Парсим IP адрес в файле resolv.conf ##
#STDIN
grep -q 8.8.8.8 /etc/resolv.conf
 
## В цикле будем использовать статус выхода grep ##
if [ $? -eq 0 ]
then
  #STDOUT
  echo "Успешно: IP адрес найден в файле."
  #echo "Код возврата: "$?
  exit 0
else
  #STDERR
  #echo "Код возврата: "$?
  echo "Ошибка: IP адрес не найден в файле. Скрипт остановлен" >&2
  exit 1
fi
