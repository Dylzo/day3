#!/bin/bash

regex='(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'
echo "Введите URL адрес"
read url
if [[ $url =~ $regex ]]
then 
    echo "[ $url ] - это действительно URL адерс"
else
    echo "[ $url ] - больше всего похоже на твоё воображение. Это не URL адрес!"
fi
