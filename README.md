# Operationalized a Machine Learning Microservice API

[![CircleCI](https://circleci.com/github/ablazleon/ml-api-docker-k8.svg?style=svg)](https://app.circleci.com/pipelines/github/ablazleon/ml-api-docker-k8)

 ***Credits***
Udacity Cloud DevOps Nanodegree Program

## 1. Installation
## 2. Usage
## 3. Contributing
## 4. How it was developed
### a. Steps
### b. Requirements (Rubric)

--------------
## Project Overview

In this project, I have applied the skills I have acquired in this course to operationalize a Machine Learning Microservice API. 

It's given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

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


## 1. Installation

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

## 2. Usage

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


## 3. Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)

## 4. How it was developed

### a.Steps

0. Create and activate an environment
1. Complete the Dockerfile
2. Run a Container & Make a Prediction
3. Improve Logging & Save Output
4. Upload the Docker Image
5. Configure Kubernetes to Run Locally
6. Deploy with Kubernetes and Save Output Logs
7.  [Important] Delete Cluster
8. CircleCI Integration
9. Task 9: README.md


### b. Requirements (Rubric)

Files Submitted

-[ ] ***All files are submitted***: The submitted repository includes a .circleci folder, a README.md file, a Dockerfile and Makefile, as well as an app.py file, a prediction script, and the necessary scripts to run and upload a microservice on Docker and Kubernetes.
There should also be two output text files: docker_out.txt and kubernetes_out.txt that include the log output after a prediction is made, given some sample input data.

NOTE: Before submitting a link to your complete, project repository, make sure you have included all required and complete files (including run_kubernetes.sh, run_docker.sh, docker_out.txt, kubernetes_out.txt, and a .circleci build directory).

-[ ] ***.circleci folder is included***: A .circleci folder is included in the Github repository. The directory holds a config.yml that checks the project code for errors. Your project should pass, as indicated by a CircleCI status badge in the repository README.


Code Quality & Enhancement

-[ ] ***Extend app.py to log a prediction value***: Add an additional logging statement to app.py that prints as “info” the output prediction for some given input data.
-[ ] ***The project shows the proper use of documentation***: The README file includes a summary of the project, how to run the Python scripts and web app, and an explanation of the files in the repository.
-[ ] ***The project passes linting via a Makefile***: Both the Dockerfile and the python file pass linting using pylint and hadolint. This may involve selectively customizing lint overrides in both tools. The lint should be run for both tools via the command make lint. Circleci build server validates step.

Docker Configuration

-[ ] ***Dockerfile is complete***: The Dockerfile should create a working directory, install the necessary dependencies, expose port 80, and specify that app.py run at container launch.
-[ ] ***Dockerfile passes linting via a Makefile***: The Dockerfile should pass make lint without errors. Circleci build server validates step.
-[ ] ***Log output is saved in docker_out.txt***: While running the docker container, call the prediction script, make_predictions.sh; the log output, which includes the output prediction value, should be included in your submission as a text file, docker_out.txt.
-[ ] ***run_docker.sh is complete***: Build, list, and run steps are completed in run_docker.sh.
-[ ] ***Docker image is uploaded to docker via upload_docker.sh***: The built docker image is uploaded to your own personal Docker ID, as indicated by a complete upload_docker.sh.

Kubernetes Configuration

-[ ] ***run_kubernetes.sh is complete***: This script runs a docker image with kubernetes, lists the kubernetes pod(s), and forwards the container port to a host, using kubectl appropriately.
-[ ] ***An output prediction is saved in kubernetes_out.txt***: While running on kubernetes, call make_predictions.sh; the terminal output should be included in your submission as a text file, kubernetes_out.txt.


---------------

## Annex: Instructions

This repository is associated with Cloud DevOps ND - Course 04 - Microservices at Scale using AWS & Kubernetes. In here, you'll find:
1. Supporting material used in the video demonstration in the course 
1. Starting code for a project, in which you can containerize and deploy a machine learning srevice using Kubernetes.

---

### A. Dependencies
#### A.1. Python
[Download and install the python](https://www.python.org/downloads/). 

#### A.2. Docker Desktop
You would require you to install Docker Desktop to create containers for individual microservices. Refer the following links for instructions 
* [macOS](https://docs.docker.com/docker-for-mac/install/), 
* [Windows 10 64-bit: Pro, Enterprise, or Education](https://docs.docker.com/docker-for-windows/install/), 
* [Windows  10 64-bit Home](https://docs.docker.com/toolbox/toolbox_install_windows/). 
* You can find installation instructions for other operating systems at:  https://docs.docker.com/install/

#### A.3. Kubernetes 
You would need to install any one tool for creating a Kubernetes cluster - KubeOne / Minikube / kubectl on top of Docker Desktop:
1. [Install and Set Up kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) directly on top of Docker desktop - For Windows/macOS
2. [Install Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) - For Linux/macOS

#### A.4. AWS account to access AWS Lambda
You'll need an [AWS account](https://aws.amazon.com/free/?all-free-tier.&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc) to get started with [AWS Lambda](https://aws.amazon.com/lambda/), which is a serverless computing platform on cloud.  

#### A.5. An account with Circle CI
You may sign up on [CircleCI.com](https://circleci.com/signup/) with your GitHub credentials. 

---

### B. The Overarching Diagram

![Overview](https://camo.githubusercontent.com/bb29cd924f9eb66730bbf7b0ed069a6ae03d2f1a/68747470733a2f2f757365722d696d616765732e67697468756275736572636f6e74656e742e636f6d2f35383739322f35353335343438332d62616537616638302d353437612d313165392d393930392d6135363231323531303635622e706e67)

---

### C. Tutorials

#### C.1. AWS Lambda & Serverless

* [Making Change](https://github.com/udacity/DevOps_Microservices/tree/master/lambda-functions/make-change-tutorial): Create and deploy a serverless lambda function that responds to an input request; this example creates the correct amount of change to make up a value in US dollars.
* [Wikipedia Query](https://github.com/udacity/DevOps_Microservices/tree/master/lambda-functions/wikipedia-query): Deploy a lambda function that responds to an input, wikipedia page query; this example returns the first sentence of a specific wikipedia page upon being queried.


### D. Project Instructions

* [Operationalize a Machine Learning Microservice API](https://github.com/udacity/DevOps_Microservices/tree/master/project-ml-microservice-kubernetes): Deploy a containerized, machine learning application using Kubernetes.

To run any project code, you'll have to set up a virtual environment with the project dependencies. All of the following instructions are to be completed via a terminal/command line prompt. 

### E. Create and Activate an Environment

#### E.1. Git and version control
These instructions also assume you have `git` installed for working with Github from a terminal window, but if you do not, you can download that first from this [Github installation page](https://www.atlassian.com/git/tutorials/install-git).

**Now, you're ready to create your local environment!**

1. If you haven't already done so, clone the project repository, and navigate to the main project folder. 
```bash
git clone https://github.com/udacity/DevOps_Microservices.git
cd DevOps_Microservices/project-ml-microservice-kubernetes
```

2. Create (and activate) a new environment, named `.devops` with Python 3. If prompted to proceed with the install `(Proceed [y]/n)` type y.
```bash
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```

At this point your command line should look something like: `(.devops) <User>:project-ml-microservice-kubernetes<user>$`. The `(.devops)` indicates that your environment has been activated, and you can proceed with further package installations.

3. Installing dependencies via project `Makefile`. Many of the project dependencies are listed in the file `requirements.txt`; these can be installed using `pip` commands in the provided `Makefile`. While in your project directory, type the following command to install these dependencies.
```bash
make install
```

Now most of the `.devops` libraries are available to you. There are a couple of other libraries that we'll be using, which can be downloaded as specified, below. 

---

#### E.2. Other Libraries

While you still have your `.devops` environment activated, you will still need to install:
* Docker
* Hadolint
* Kubernetes ([Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) if you want to run Kubernetes locally)

#### E.3. Docker

You will need to use Docker to build and upload a containerized application. If you already have this installed and created a docker account, you may skip this step.

1. You’ll need to [create a free docker account](https://hub.docker.com/signup), where you’ll choose a unique username and link your email to a docker account. **Your username is your unique docker ID.**

2. To install the latest version of docker, choose the Community Edition (CE) for your operating system, [on docker’s installation site](https://docs.docker.com/v17.12/install/). It is also recommended that you install the latest, **stable** release:

3. After installation, you can verify that you’ve successfully installed docker by printing its version in your terminal: `docker --version`

#### E.4. Run Lint Checks

This project also must pass two lint checks; `hadolint` checks the Dockerfile for errors and `pylint` checks the `app.py` source code for errors.

1. Install `hadolint` following the instructions, [on hadolint's page]( https://github.com/hadolint/hadolint): 

**For Mac:**
```bash
brew install hadolint
```
**For Windows:**
```bash
scoop install hadolint
```
2. In your terminal, type: `make lint` to run lint checks on the project code. If you haven’t changed any code, all requirements should be satisfied, and you should see a printed statement that rates your code (and prints out any additional comments):

```bash
------------------------------------
Your code has been rated at 10.00/10
```

That's about it! When working with kubernetes, you may need to install some other libraries, but these instructions will set you up with an environment that can build and deploy Docker containers.

