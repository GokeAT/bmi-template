#!/bin/bash

#Install docker

curl https://get.docker.com | sudo bash

#Log in to docker
docker login -u $DOCKER_LOGIN_USR -p $DOCKER_LOGIN_PSW



