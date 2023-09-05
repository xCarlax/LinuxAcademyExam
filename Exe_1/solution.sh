#!/bin/bash

num=0
for i in {01..15}; do
 touch file-$i.txt
 for ((j=0; j<10; j++)); do
   echo -e "$(shuf -n 1 /usr/share/dict/words)" >> file-$i.txt
 done
 ((num++))
 if [ $(($num%2)) != 0 ]; then
   cp "file-$i.txt" "file $i.text"
 fi
done

