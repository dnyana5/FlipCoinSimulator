#!/bin/bash
#coin toss
coinToss=$((RANDOM%2))
if [ $coinToss == 0 ]
then
   echo "Heads"
else
   echo "Tails"
fi
