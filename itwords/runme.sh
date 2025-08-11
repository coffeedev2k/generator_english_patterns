#!/bin/bash
#set -ex

fd="google-10000-english-no-swears.txt"
w="foldoc-clean.txt"
# Проходим по каждому слову из файла w
while read -r word; do
  # Ищем слово в файле fd, получаем номер строки
  line_num=$(grep -n -w "$word" $fd | cut -d: -f1)
  # Если слово найдено, выводим номер строки с ведущими нулями и слово
  if [[ -n "$line_num" ]]; then
    printf "%07d %s\n" "$line_num" "$word"
  fi
done < $w
