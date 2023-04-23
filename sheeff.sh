#!/bin/bash

# set -ex

# выставляем цифру сколько файлов делать
COUNT_OF_FILES=2

# Название для итогового файла
r='result.txt'

# Переменную, откуда будем время брать
time='> < ='

# Переменную, откуда будем знак брать
sign='+ - ?'

# Пофайлово делаем:
for((k=0;k<${COUNT_OF_FILES};k++)); do

    # Удалем из названия файла цифру его номера предыдущую
    r=`echo ${r} | sed 's/[0-9]*//g'`

    # Ставим цифру текущую
    r=${k}${r}

    # Чистим файл на всякий случай, если он вдруг был
    echo -n "" > $r

    for((i=0;i<100;i++)); do

        echo "Do ${i} item of ${k} file"

        # Пишем в файл при этом выбираем случайное слово и без переноса строк всё
        echo -n $(cat noun.txt | shuf | head -n 1)  | tr -d '\r\n' >> $r
        echo -n "     "  | tr -d '\r\n' >> $r

        echo -n $(cat verb.txt | shuf | head -n 1)  | tr -d '\r\n' >> $r
        echo -n "     "  | tr -d '\r\n' >> $r

        echo $time | cut -f `echo $(( $RANDOM % 3 + 1 ))` -d " "  | tr -d '\r\n' >> $r
        echo -n "     "  | tr -d '\r\n' >> $r

        echo $sign | cut -f `echo $(( $RANDOM % 3 + 1 ))` -d " "  | tr -d '\r\n' >> $r
        echo -n "     " >> $r

        echo -n $(cat obj.txt | shuf | head -n 1)  | tr -d '\r\n' >> $r
        # Добавляем перенос строк, чтобы завершить строку
        echo "     " >> $r



    done

done





















# mkdir  -p ./tmp

# cat noun.txt| shuf > ./tmp/noun.txt
# cat verb.txt| shuf > ./tmp/verb.txt
# #################################################
# echo '' > ./tmp/sign_sorted.txt
# for ((n=0;n<33;n++))
# do echo P >> ./tmp/sign_sorted.txt
# done

# for ((n=0;n<33;n++))
# do echo N >> ./tmp/sign_sorted.txt
# done

# for ((n=0;n<34;n++))
# do echo Q >> ./tmp/sign_sorted.txt
# done

# cat ./tmp/sign_sorted.txt | shuf > ./tmp/sign.txt
# #################################################
# echo '' > ./tmp/time_sorted.txt
# for ((n=0;n<33;n++))
# do echo Q1 >> ./tmp/time_sorted.txt
# done

# for ((n=0;n<33;n++))
# do echo Q2 >> ./tmp/time_sorted.txt
# done

# for ((n=0;n<34;n++))
# do echo Q3 >> ./tmp/time_sorted.txt
# done

# cat ./tmp/time_sorted.txt | shuf > ./tmp/time.txt
# #################################################
# cat obj.txt| shuf > ./tmp/obj.txt

# paste -d "_" ./tmp/noun.txt ./tmp/verb.txt ./tmp/time.txt ./tmp/sign.txt   ./tmp/obj.txt > result.txt
# #paste ./tmp/result01.txt  > result.txt
# # ./tmp/time.txt ./tmp/sign.txt   ./tmp/obj.txt
