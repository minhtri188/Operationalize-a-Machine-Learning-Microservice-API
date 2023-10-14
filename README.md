[![<ORG_NAME>](https://circleci.com/gh/minhtri188/Operationalize-a-Machine-Learning-Microservice-API.svg?style=svg)](https://app.circleci.com/pipelines/github/minhtri188/Operationalize-a-Machine-Learning-Microservice-API)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Install Python 3.7
```bash
sudo apt install libssl-dev libncurses5-dev libsqlite3-dev libreadline-dev libtk8.6 libgdm-dev libdb4o-cil-dev libpcap-dev
cd ~
wget https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tar.xz
tar xvf Python-3.7.9.tar.xz
cd Python-3.7.9
./configure
sudo make
sudo make altinstall
```
* Create a virtualenv with Python 3.7 and activate it.Refer to this link for help on specifying the Python version in the virtualenv.
```bash
py -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
py -m virtualenv .devops
source .devops/Scripts/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`
#### 1. Standalone:  
Run `python app.py`

#### 2. Run in Docker:
1. Run `./run_docker.sh` to dockerize the application and containerize it.
2. Run `./make_prediction.sh` to evaluate the local predict API.

#### 3. Run in Kubernetes:  
1. Run `./upload_docker.sh` to upload the docker image into docker hub.
2. Run `minikube start` to start the local kubernetes cluster
3. Run `kubectl config view` to check that the cluster has a certificate-authority and server, and to see the default settings for kubernetes.
4. Run `./run_kubernetes.sh` when the pod is in [Running] state
5. Run `./make_prediction.sh` while calling `./run_kubernetes.sh`

##### 4. Clean up kubernetes cluster
1. Run `minikube delete`
2. Run `minikube stop`
