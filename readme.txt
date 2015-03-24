/home/ann/ml101/readme.txt

The files in this repo are part of an effort to teach scikit-learn to a class
of students at Hacker Dojo.

The class has a Meetup URL:

http://www.meetup.com/Palo-Alto-Data-Science-Association/events/221356350/

The above class is the 7th lecture in a series of 11.

The steps I follow to use these files are listed below:

- Install Ubuntu 14.04 Linux on your laptop or somewhere on the cloud

- apt-get install sqlite3

- useradd -m -s /bin/bash ann

- Login as ann

- Download 64 bit Anaconda for Linux:

- http://continuum.io/downloads#py34

- Install Anaconda3:

- bash Anaconda3-2.1.0-Linux-x86.sh

- mv ~ann/anaconda3/bin/curl  ~ann/anaconda3/bin/curl_ann

- vi ~ann/.bashrc

- I want this syntax in there:

if [ -e ${HOME}/anaconda3/bin ]; then
  export PATH="${HOME}/anaconda3/bin:$PATH"
fi

- Type bash 

- which python

- Get the files for the repo for this readme:

- cd ~ann

- git clone https://github.com/danbikle/ml101.git

- cd ml101/

- ./call_ml101.bash

- I should see something like this:

- https://github.com/danbikle/ml101/blob/master/screendump.txt

- Also we have a png file with the blue-line-green-line visualization:

- https://github.com/danbikle/ml101/blob/master/demo_data/ff1.png

If you have questions, e-me:

dan@bot4.us
Put not-spam in subject.
