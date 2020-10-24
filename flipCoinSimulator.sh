#!/bin/bash

#read -p "Enter how many times you wnat to flip " count
count=0
heads=0
tails=o

while [[ $heads -lt 21 && $tails -lt 21 ]]
do
   flip=$((RANDOM%2))

   if [ $flip -eq 1 ]
   then
      (( heads++ ))
   else
      (( tails++ ))
   fi
      ((count++))

done
echo "FLIP_COUNT-"$count
echo "HEAD_WON "$heads "times"
echo "TAIL_WON "$tails "times"


if [ $tails == $heads ]
then
   echo "match tie"
else
   if [ $tails == 21 ]
   then
      echo "TAIL WON by "$((tails-heads))
   else
      echo "HEAD WON by "$((heads-tails))
   fi
fi
