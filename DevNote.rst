

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
    self.api = APIClient(*args, **kwargs)
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
    self.api = APIClient(*args, **kwargs)
  File "/usr/local/lib/python3.8/dist-packages/docker/api/client.py", line 131, in __init__
    self._auth_configs = auth.load_config(
TypeError: load_config() got an unexpected keyword argument 'config_dict'

