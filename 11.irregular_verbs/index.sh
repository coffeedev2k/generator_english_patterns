#!/bin/bash

# set -ex

userInput=""

while true; do

    # https://your-teachers.ru/articles/top-120-nepravilnykh-glagolov-po-chastote-isplzovaniya/

    # bring, brought, brought — приносить
    line=$(cat verb.txt | shuf | head -n 1)

    line1=$(echo "$line" | awk '{print $1}')
    line2=$(echo "$line" | awk '{print $3}')
    # line3=$(echo $line | cut -f 3 -d "," | cut -f 1 -d "—")
    # line4=$(echo $line | cut -f 3 -d "," | cut -f 2 -d "—")
    # Запрос ввода от пользователя
    # echo "Введите неправильную вторую форму глагола $line1"
    # read userInput

    # # Сравнение введенного значения с ожидаемым
    # if [ "$userInput" == "$line2" ]; then
    #     echo "Введенное значение совпадает с ожидаемым."
    #     break
    # else
    #     echo "Введенное значение не совпадает с ожидаемым."
    # fi

    while [ "$userInput" != "$line2" ]; do
        echo "Введите неправильную вторую форму глагола $line1"
        # echo "ожидаю $line2"
        read userInput
    done

done
