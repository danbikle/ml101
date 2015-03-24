#!/bin/bash

# /home/ann/ml101/wgethtml.bash

# This script helps me get most recent price

TKRH='%5EGSPC'
TKR='GSPC'
rm -f ${TKR}.html

wget --output-document=${TKR}.html http://finance.yahoo.com/q?s=$TKRH

exit

