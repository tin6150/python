# python

unofficial 
containerization of python,

first intended as conversion of python from docker to singularity

now have github workflow build docker container, the convert to singularity during a pull process

for incorporation into software_module_farm


plan to be a fairly fat container with many python libraries, numby, pandas, and likely many less common one requested by researchers.




# example run command (in testing)

docker pull          ghcr.io/tin6150/python:main
docker run -it --rm  --entrypoint=/bin/bash ghcr.io/tin6150/python:main
docker run -it --rm  --entrypoint=/bin/pip  ghcr.io/tin6150/python:main list


pushd ~/tin-gh/lbnl-science-it/atlas-run
docker run -it --rm  -v `pwd`:/mnt ghcr.io/tin6150/python:main  -u /mnt/atlas_run.py -v 2>&1 | tee ./log_atlas_testv12.out 
# the tee is to local fs, not inside the container



singularity pull --name python.sif docker://ghcr.io/tin6150/py-conda:main



# historical info

this repo was started back in 2019... 
2024.0413 changed branch name from master to main
rename used web gui, manually changing URL to "/branches" to get list to rename, set default.

