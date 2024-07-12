

copilot pip install docker-compose doesn't actually add docker, need to find out what's the real fix.

error:

root@db773980cbb4:/mnt# python3 -u ./atlas_run.py -v


##################################################
####### RUNNING PILATES FROM 2017 TO 2049 ########
##################################################

Traceback (most recent call last):
  File "./atlas_run.py", line 171, in <module>
    client = initialize_docker_client(settings)
  File "./atlas_run.py", line 32, in initialize_docker_client
    client = docker.from_env()
  File "/usr/local/lib/python3.8/dist-packages/docker/client.py", line 94, in from_env
    return cls(
  File "/usr/local/lib/python3.8/dist-packages/docker/client.py", line 45, in __init__
    self.api = APIClient(*args, **kwargs)				#(*
  File "/usr/local/lib/python3.8/dist-packages/docker/api/client.py", line 131, in __init__
    self._auth_configs = auth.load_config(
TypeError: load_config() got an unexpected keyword argument 'config_dict'



~~~~~

* 340e3a8 (HEAD -> ub20.04, origin/ub20.04) trying docker.io instead
still same problem


root@ac03dc08397f:/mnt# python3 -u ./atlas_run.py -v


##################################################
####### RUNNING PILATES FROM 2017 TO 2049 ########
##################################################

Traceback (most recent call last):
  File "./atlas_run.py", line 171, in <module>
    client = initialize_docker_client(settings)
  File "./atlas_run.py", line 32, in initialize_docker_client
    client = docker.from_env()
  File "/usr/local/lib/python3.8/dist-packages/docker/client.py", line 94, in from_env
    return cls(
  File "/usr/local/lib/python3.8/dist-packages/docker/client.py", line 45, in __init__
    self.api = APIClient(*args, **kwargs)						#*
  File "/usr/local/lib/python3.8/dist-packages/docker/api/client.py", line 131, in __init__
    self._auth_configs = auth.load_config(
TypeError: load_config() got an unexpected keyword argument 'config_dict'





~~~~~


ub21.04 

strange, install...OUT... show strange error, 
doesn't seems to be getting very far.
no docker, no python3
maybe abandoning that effort for now


root@0f64fff98c5b:/opt/gitrepo/container# cat install_dependencies.OUT.TXT
Thu Apr 25 10:33:11 PDT 2024
Ign:1 http://security.ubuntu.com/ubuntu hirsute-security InRelease
Err:2 http://security.ubuntu.com/ubuntu hirsute-security Release
  404  Not Found [IP: 91.189.91.81 80]
Ign:3 http://archive.ubuntu.com/ubuntu hirsute InRelease
Ign:4 http://archive.ubuntu.com/ubuntu hirsute-updates InRelease
Ign:5 http://archive.ubuntu.com/ubuntu hirsute-backports InRelease
Err:6 http://archive.ubuntu.com/ubuntu hirsute Release
  404  Not Found [IP: 185.125.190.36 80]
Err:7 http://archive.ubuntu.com/ubuntu hirsute-updates Release


~~~~~~


spython is 
sigunlarity python package. I remembered installing it by "pip3 install spython". Another installation option is here: https://singularityhub.github.io/singularity-cli/install.

