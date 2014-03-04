#!/bin/bash

#Shellslides by Giovanni Santostefano
#http://letteredalcyberspazio.wordpress.com

while read line
do
  echo $line
  if [[ $line = "slide" ]] 
  then
    MODE="slide"
    continue
  fi
  
  if [[ $line = "shell" ]]
  then
    MODE="shell"
    continue
  fi
  
  if [[ $MODE = "slide" ]]
  then
    clear
    cat $line
    read -n 1 -s -u 1
    continue
  fi
  
  if [[ $MODE = "shell" ]]
  then
    clear
    sh $line
    read -n 1 -s -u 1
    continue
  fi
done < "index.slides"