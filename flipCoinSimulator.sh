#!/bin/bash

read -p "Enter how many times you wnat to flip " count
heads=0
tails=o

for ((i=0; i<$count; i++ ))
do
   flip=$((RANDOM%2))

   if [ $flip -eq 1 ]
   then
      (( heads++ ))
   else
      (( tails++ ))
   fi

done
#echo "COUNT-"$count
echo "HEAD_WINS-"$heads
echo "TAIL_WINS-"$tails
