#!/bin/bash

# https://www.learnenglishbest.com/tobe/

# set -ex

# выставляем цифру сколько файлов делать
COUNT_OF_FILES=3


# Название для итогового файла
r='result.txt'

# Переменную, откуда будем время брать
time='> < ='
#time='= = ='

# Переменную, откуда будем знак брать
sign='+ - ?'

# Пофайлово делаем:
for ((k = 0; k < ${COUNT_OF_FILES}; k++)); do

    # Удалем из названия файла цифру его номера предыдущую
    r=$(echo ${r} | sed 's/[0-9]*//g')

    # Ставим цифру текущую
    r=${k}${r}

    # Чистим файл на всякий случай, если он вдруг был
    echo -n "" >$r

    for ((i = 0; i < 100; i++)); do

        echo "Do ${i} item of ${k} file"

        echo -n $(cat first.txt | shuf | head -n 1) | tr -d '\r\n' >>$r
        echo -n "     " | tr -d '\r\n' >>$r

        echo -n $(cat second.txt | shuf | head -n 1) | tr -d '\r\n' >>$r
        # Добавляем перенос строк, чтобы завершить строку
        echo "     " >>$r

        echo "" >>$r
        echo "" >>$r
        echo "" >>$r

    done

done
