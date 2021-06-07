# DevOps Project

For my training with QA to become a DevOps Engineer, I developed an application which generates objects based on a set of predefined rules. The application was required to consist of 4 services whilst utilising a service oriented architecture.

The 4 services of my application rely on each other to run, Service 1 is the front end of the application and it also stores information acquired in a database, Service 2 and 3 randomly generate objects whilst service 4 creates an output based on the inputs from service 2 & 3 to be sent back to Service 1 and shown to the user.

Deployment and Testing was done using Jenkins

Docker was used for module containerisation and Docker Swarm for orchestration

Ansible was used for server provision

Nginx was used for load balancing allowing for the use of a reverse proxy

## Body Mass Index Application

For my application, the user has to refresh the page to start using the app (service 1). Upon refresh, a random height is generated (service 2) and a random weight is also generated (service 3). Based off the height & weight provided, the users BMI is calculated and provided to the user (service 4) as underweight, healthy weight or overweight. The last 5 results are also stored in an SQL database and shown on screen.

# Contents

* [Software Design](#Software-Design)
    * [Planning](#Planning)
    * [Database](#Database)
    * [Risk Assessment](#Risk-Assessment)
    * [Test plan](#Test-plan)
* [Test Results](#Test-Results)
* [Conntinuous Deployment and Integration](#Continuous-Deployment-and-Integration)  
* [Architecture](#Architectures)
* [Service configuration](#Service-configuration)
* [Front-End Design](#Front-End-Design)
* [Author](#Author)

# Software Design

The app was developed mainly using Python, HTML, Bash & Dockerfile

## Planning

Planning for the project was done using a Trello Board as not only is it free to use but it also allowed me to highlight the MVP (Minimum Viable Product), project resources, user stories, the work that needs to be done, work in progress & the work that has been finished.

An initial trello board was made before development

A new trello board was then created after implementation in order to highlight any changes in the development process

## Database

An entity diagram is shown displaying the attributes for the object in the application

The three attributes utilised were Height, Weight & BMI

## Risk Assessment

A risk assessment register was made to identify the potential risks faced by the project and how they would be prevented and dealt with upon occurence

Initial risk assessment pre development:

Risk assessment after app development:

# Test Plan

Test plans were also used to identify what sections of the program were expected to be tested & how

# Test Results

PyTest was used to test the functionalities of my project, The tests used were automated by Jenkins; running whenever the the app was deployed onto the server. Results of test are shown below alongside a snippet of the test logs

# Continuous Integration

Continuous Integration Pipeline was used to show how the app would not only be designed but also developed and deployed to the user in an automated process

Shown below is the CI Pipeline for my BMI Application:


# Architecture

**Docker Compose** was used to define and run multiple containers at the same time, functions such as build and push allowed for these functionalities to be used for application development/deployment

**Docker Swarm** was used as an orchestration tool allowing for the automation of the maintenance of this project. It utilises virtual machines & replaces failed containers instantly allowing for instant rollout of application updates

**Nginx** is utilised as a load balancer as well as a reverse proxy. Users can utilise the nginx server url to view the website. Nginx has also been used to due its light weight resource use as well as being scaled easily with minimal hardware

**Ansible playbooks** were used to set up the build environment for the app


# Service Configuration

Service 1 displays the website to the user and stores results in a database, service 2 and 3 generate random objects, Service 4 produces a result based off service 2 and 3 to then be sent to Service 1 as an output

# Front End Design

Below is an image showcasing an example of the front end of the application

# Author

Goke Tegbe
