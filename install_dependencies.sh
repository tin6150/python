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
apt-get -y install ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update

#### apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#### tmp disabling for test on physical machine.  wombat17x use snap's docker

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

# spython is
# sigunlarity python package. I remembered installing it by "pip3 install spython". Another installation option is here: https://singularityhub.github.io/singularity-cli/install.
pip install spython 2>&1 | tee    pip_install_spython.TEE_OUT.txt 
echo $?                  | tee -a pip_install_spython.TEE_OUT.txt

echo "==================================="

pip list > pip_list.after_install.txt


# cd /
