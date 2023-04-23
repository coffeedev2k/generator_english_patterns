#!/bin/bash

cat noun.txt| shuf > /tmp/noun.txt
cat verb.txt| shuf > /tmp/verb.txt
#################################################
echo -n "" > /tmp/sign_sorted.txt
for ((n=0;n<33;n++))
do echo "+" >> /tmp/sign_sorted.txt
done

for ((n=0;n<33;n++))
do echo "-" >> /tmp/sign_sorted.txt
done

for ((n=0;n<34;n++))
do echo "?" >> /tmp/sign_sorted.txt
done

cat /tmp/sign_sorted.txt| shuf > /tmp/sign.txt
#################################################
echo -n "" > /tmp/time_sorted.txt
for ((n=0;n<33;n++))
do echo ">" >> /tmp/time_sorted.txt
done

for ((n=0;n<33;n++))
do echo "=" >> /tmp/time_sorted.txt
done

for ((n=0;n<34;n++))
do echo "<" >> /tmp/time_sorted.txt
done

cat /tmp/time_sorted.txt| shuf > /tmp/time.txt
#################################################
cat obj.txt| shuf > /tmp/obj.txt

paste /tmp/noun.txt /tmp/verb.txt /tmp/sign.txt /tmp/time.txt /tmp/obj.txt > result.txt
