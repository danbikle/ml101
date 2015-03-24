#!/bin/bash

# /home/ann/ml101/ml101.bash

# This script should learn from GSPC observations and then predict.

# Demo:
# YRS=1 ; TRAIN_YRS=5 ; HTML=no ; ~ann/ml101/ml101.bash

if [ -e ~ann/gspc/ ]; then
  echo $0 is in the correct folder.
else
  echo $0 needs to reside here:
  echo ~ann/gspc/
  echo bye.
  exit 1
fi

if [ -z "$YRS" ]; then
  YRS=2
fi  

if [ -z "$TRAIN_YRS" ]; then
  TRAIN_YRS=4
fi  

if [ -z "$HTML" ]; then
  HTML=no
fi  

echo  YRS IS:
echo $YRS

echo  TRAIN_YRS IS:
echo $TRAIN_YRS

echo  HTML IS:
echo $HTML

mkdir -p /tmp/ml101/
cd       /tmp/ml101/

# I should get csv data
echo ~ann/ml101/wgetem.bash


if [ "$HTML" -eq 'yes' ]; then
  # I should get most recent price
  echo ~ann/ml101/wgethtml.bash
fi  




exit
