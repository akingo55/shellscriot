#!/bin/bash

# 配列に入っている値をランダムで出力
WORDS=(`cat words.txt`)

#echo ${#WORDS[@]}
while true
do
  WORD=${WORDS[$(($RANDOM % ${#WORDS[*]}))]}
  echo $WORD
done
