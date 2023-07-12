#!/bin/bash

# set -ex

userInput=""

while true; do

    # https://your-teachers.ru/articles/top-120-nepravilnykh-glagolov-po-chastote-isplzovaniya/

    # bring, brought, brought — приносить
    line=$(cat verb.txt | shuf | head -n 1)

    row1=$(echo "$line" | awk '{print $1}')
    row2=$(echo "$line" | awk '{print $2}')
    row3=$(echo "$line" | awk '{print $3}')
    row4=$(echo "$line" | awk '{print $4}')
    row5=$(echo "$line" | awk '{print $5}')
    row6=$(echo "$line" | awk '{print $6}')
    row7=$(echo "$line" | awk '{print $7}')
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

    while [ "$userInput" != "$row3" ]; do
        echo "Введите прошлое время (вторую форму) глагола $row1"
        # echo "ожидаю $line2"
        read userInput
    done

    echo "Правильно, $row3 $row4 сам глагол $row7"
done
