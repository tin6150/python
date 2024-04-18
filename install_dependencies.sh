#!/bin/sh

## install python packages and add libraries

date
apt-get update
apt-get -y install python3 python3-pip curl

echo "==================================="

# perhaps tmp only, atlas need to invoke docker, so this maybe helpful
#xx old do not use  apt-get -y install docker-compose
# https://docs.docker.com/engine/install/ubuntu/
# Add Docker's official GPG key:
apt-get install ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update

apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo $?

# test:
# sudo docker run hello-world

echo "==================================="


date
pip list > pip_list.before_install.txt
# pip install numpy pandas   # these are in requirements.txt now
echo $?
echo "==================================="
echo "===== requirements.txt ====="
echo "==================================="
#pip install -r requirements.txt
cat requirements.txt | grep -v ^# | xargs -n 1 pip install 
echo $?

echo "==================================="
echo "===== requirements.atlas.txt ====="
echo "==================================="
cat requirements.atlas.txt | grep -v ^# | xargs -n 1 pip install 
echo $?

echo "==================================="
date

pip list > pip_list.after_install.txt


# cd /
