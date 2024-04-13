#!/bin/sh

## install python packages and add libraries

date
apt-get -y install python3 python3-pip
echo $?
echo "==================================="


date
pip list > pip_list.before_install.txt
pip install numpy pandas
echo $?
echo "==================================="
#pip install -r requirements.txt
cat requirements.txt | grep -v ^# | xargs -n 1 pip install 
echo $?
echo "==================================="
date

pip list > pip_list.after_install.txt


# cd /
