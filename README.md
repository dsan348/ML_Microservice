<include a CircleCI status badge, here>

## Project Overview

This project operationalizes a Machine Learning Microservice API. 

We are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features. We operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Files 

* Dockerfile - Used by docker to pull image and create container with specified requirements. 
* Makefile - Used to set up environment and run lint tests
* app.py - Python flask app that serves out predictions.
* make_prediction.sh - Sends request to app.py to retrieve prediction.
* requirements.txt - Lists dependencies to be installed during environment setup. 
* run_docker.sh - Bash script to initiate docker image pull and container build.
* upload_docker.sh - Bash script that tags and uploads this image (containing flask app and dependancies) to Docker Hub.
* run_kubernetes.sh - Bash script that deploys the previously saved docker image to the Kubernetes environment.

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
