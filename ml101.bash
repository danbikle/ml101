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

if [ "$HTML" == 'yes' ]; then
  # I should get most recent price
  ~ann/ml101/wgethtml.bash
  # I should extract recent prices from html
  python ~ann/ml101/extprice.py
  # I should cat prices together
  echo 'cdate,cp'                            > GSPC3.csv
  cat GSPCrecent.csv GSPC2.csv|grep -v Date >> GSPC3.csv
  cat GSPC3.csv                              > GSPC2.csv 
fi  

# I should generate features
python ~ann/gspc/genf.py GSPC2.csv
# That should give me
# /tmp/ml101/ftrGSPC2.csv

# I should train from ftrGSPC2.csv and $TRAIN_YRS and then predict $YRS years
python ~ann/ml101/ml101.py $TRAIN_YRS $YRS
# That should give me
# /tmp/ml101/prdf_${TRAIN_YRS}_${YRS}.csv


exit
