#!/bin/bash

# /home/ann/ml101/ml101.bash

# This script should learn from GSPC observations and then predict.

if [ -e ~ann/gspc/ ]; then
  echo $0 is in the correct folder.
else
  echo $0 needs to reside here:
  echo ~ann/gspc/
  echo bye.
  exit 1
fi

mkdir -p /tmp/ml101/
cd       /tmp/ml101/


if [ -z "$YRS" ]; then
    export YRS=2
fi  

if [ -z "$TRAIN_YRS" ]; then
    export TRAIN_YRS=4
fi  

if [ -z "$HTML" ]; then
    export HTML=no
fi  

echo  YRS IS:
echo $YRS

echo  TRAIN_YRS IS:
echo $TRAIN_YRS

echo  HTML IS:
echo $HTML

exit
