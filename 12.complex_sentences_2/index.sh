#!/bin/bash

# https://www.learnenglishbest.com/tobe/

# set -ex

# выставляем цифру сколько файлов делать
COUNT_OF_FILES=1

# Название для итогового файла
r='result.txt'

# Переменную, откуда будем время брать
# time='> < ='
#time='= = ='

# Переменную, откуда будем знак брать
# sign='+ - ?'

# Пофайлово делаем:
for ((k = 0; k < ${COUNT_OF_FILES}; k++)); do

    # Удалем из названия файла цифру его номера предыдущую
    r=$(echo ${r} | sed 's/[0-9]*//g')

    # Ставим цифру текущую
    r=${k}${r}

    # Чистим файл на всякий случай, если он вдруг был
    echo -n "" >$r

    for ((i = 0; i < 100; i++)); do

        # line=$(cat full.txt | shuf | head -n 1)
        first=$(cat full.txt | shuf | head -n 1 | cut -f 1 -d ",")
        second=$(cat full.txt | shuf | head -n 1 | cut -f 2 -d ",")

        echo "Do ${i} item of ${k} file"

        # echo -n $() | tr -d '\r\n' >>$r
        echo -n $first | tr -d '\r\n' >>$r
        echo "     " | tr -d '\r\n' >>$r

        echo -n $second | tr -d '\r\n' >>$r
        # Добавляем перенос строк, чтобы завершить строку
        echo "     " >>$r

        echo "" >>$r
        echo "" >>$r
        echo "" >>$r

    done

done
