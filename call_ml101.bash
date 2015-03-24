#!/bin/bash

# /home/ann/ml101/call_ml101.bash

# This script should call ml101.bash with correct variables.

# This should give me a YRS amount of predictions:
YRS=2

# This should train from TRAIN_YRS amount of observations:
TRAIN_YRS=4

# This should be yes when I want a prediction near calif-noon:55 m-f:
HTML=no
# At night, if I set HTML=yes a duplicate observation of the most recent close
# will appear in the data.
# So, at night, export HTML=no

cd ~ann/ml101/
./ml101.bash 

exit
