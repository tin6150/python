#!/bin/sh

## install python packages and add libraries

apt-get -y install python-pip


# cd /

date

pip install numpy pandas
echo $?
echo "==================================="
pip install -r requirements.txt
echo $?
echo "==================================="
date

pip list > pip_list.after_install.txt

