[![<tiennth>](https://circleci.com/gh/tiennth/udahousefx.svg?style=svg)](https://app.circleci.com/pipelines/github/tiennth/udahousefx)


## Project Overview
This is a Machine Learning project that predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. 

## Setup the Environment

* Prerequisite: Python 3.7 in your host.
* Create a virtualenv and activate it. 
```bash
python3 -m pip install --user virtualenv
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```
* Run `make install` to install the necessary dependencies


### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

