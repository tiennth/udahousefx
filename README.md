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
2. Run in Docker:  
You need to have docker installed in your system. Follow [this link](https://docs.docker.com/engine/) to install.
Once docker is installed, you can run the below script to start the application.
`./run_docker.sh`
3. Run in Kubernetes:  
You can setup [minikube](https://minikube.sigs.k8s.io/docs/start/) to test this app with Kubernetes or using AWS EKS.
Also, you need to have kubectl installed in your system. Follow the guide [here](https://kubernetes.io/docs/tasks/tools/#kubectl) to install.
Once you have kubectl properly setup, you can run the app by following command:
`./run_kubernetes.sh`

### Test the app
After running the app, you can test it locally by executing the `make_prediction.sh` script.
In your terminal:
`./make_prediction.sh`

## Project Explanation
`.circleci/config.yml`: configuration for Circle CI pipeline.
`output_txt_files`: contains the output of the app running with docker and kubernetes.
`app.py`: the main logic of the udahousefx app that will calculate the house price with input and the trained models in `model_data`
`Dockerfile`: the instruction for docker to run the app inside container.
`make_prediction.sh`: the script to test calculation of udahousefx app
`requirements.txt`: the dependencies that udahousefx app need to work properly.
`run_docker.sh`: script to run the app inside docker container.
`run_kubernetes`: script to run the app inside kubernetes cluster.
`upload_docker`: script to upload the docker image to docker hub.