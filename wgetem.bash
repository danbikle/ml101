#!/bin/bash

# /home/ann/ml101/wgetem.bash

# This script should get CSV data from Yahoo.

mkdir -p /tmp/ml101/
cd       /tmp/ml101/

TKRH='%5EGSPC'
TKR='GSPC'
rm -f ${TKR}.csv

wget --output-document=${TKR}.csv  http://ichart.finance.yahoo.com/table.csv?s=${TKRH}
cat ${TKR}.csv | awk -F, '{print $1 "," $5}' > ${TKR}2.csv

exit
