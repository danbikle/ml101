#!/bin/bash

# /home/ann/ml101/test_ml101.bash

# This script should call ml101.bash with correct variables.

# This should give me a YRS amount of predictions:
export YRS=15
# YRS should be >= TRAIN_YRS
# Each prediction should train from TRAIN_YRS amount of observations:
export TRAIN_YRS=10

# This should be yes when I want a prediction near calif-noon:55 m-f:
export HTML=no
# At night, if I set HTML=yes a duplicate observation of the most recent close
# will appear in the data.
# So, at night, export HTML=no

# Now I should test if future data is leaking into training data:

cd ~ann/ml101/
./ml101.bash
head /tmp/ml101/ff1.csv > /tmp/ml101/test0.csv

sed -i '2d' /tmp/ml101/GSPC2.csv
./ml101test.bash
head /tmp/ml101/ff1.csv > /tmp/ml101/test1.csv

sed -i '2d' /tmp/ml101/GSPC2.csv
./ml101test.bash
head /tmp/ml101/ff1.csv > /tmp/ml101/test2.csv

sed -i '2d' /tmp/ml101/GSPC2.csv
./ml101test.bash
head /tmp/ml101/ff1.csv > /tmp/ml101/test3.csv

sed -i '2d' /tmp/ml101/GSPC2.csv
./ml101test.bash
head /tmp/ml101/ff1.csv > /tmp/ml101/test4.csv

head /tmp/ml101/test?.csv

# The most recent prediction in test4.csv
# should match the corresponding predictions in
# test3.csv, test2.csv, test1.csv, test0.csv

# I should not expect an exact match though due to 
# inherent randomness in the model.

exit
