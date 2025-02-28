#!/bin/bash

# set -ex

# выставляем цифру сколько файлов делать
COUNT_OF_FILES=3

# Название для итогового файла
r='result.txt'

# Переменную, откуда будем время брать
#time='> < ='
time='> < ='

# Переменную, откуда будем знак брать
sign='+ - ?'
#sign='+ + +'

cat_noun=$(cat noun.txt)
cat_obj=$(cat obj.txt)
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

        # Пишем в файл при этом выбираем случайное слово и без переноса строк всё
        # echo $sign | cut -f $(echo $(($RANDOM % 3 + 1))) -d " " | tr -d '\r\n' >>$r
        # echo -n "     " >>$r

        # echo $time | cut -f $(echo $(($RANDOM % 3 + 1))) -d " " | tr -d '\r\n' >>$r
        # echo -n "     " | tr -d '\r\n' >>$r

        #  | sed 's/@//g'

        noun=$(cat noun.txt | shuf | head -n 1)

        for i in 1 2 3 4 5; do
            echo $noun >>$r
            echo -n "     " | tr -d '\r\n' >>$r

            echo $noun | cut -f 1 -d "@" | tr -d '\r\n' >>$r
            echo -n "     " | tr -d '\r\n' >>$r

            echo -n $(cat obj.txt | shuf | head -n 1) | tr -d '\r\n' >>$r
            echo -n "     " | tr -d '\r\n' >>$r

            echo -n $(cat obj.txt | shuf | head -n 1) | tr -d '\r\n' >>$r
            # Добавляем перенос строк, чтобы завершить строку
            echo '' >>$r
            echo '' >>$r
            echo '' >>$r
        done

    done

done

cat *result.txt | xclip
