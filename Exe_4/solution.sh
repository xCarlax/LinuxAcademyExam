#!/bin/bash

sentinella=~/sentinel

while true 
do
  num=$(od -A n -t d -N 1 /dev/urandom | grep [0-9] | tr -d ' ')
  digit="${num:1:1}"
  if [[ -f  $sentinella ]]; then
    echo ${digit} >> $sentinella
  else 
    echo ${digit} > /dev/null
  fi;
done


    
