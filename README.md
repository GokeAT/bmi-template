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

![Initial Trello](https://user-images.githubusercontent.com/48153566/120951606-24d9fe80-c741-11eb-888f-4a526522fc46.png)

A new trello board was then created after implementation in order to highlight any changes in the development process

![secondtrello](https://user-images.githubusercontent.com/48153566/120951617-2a374900-c741-11eb-9aeb-559c9b07e75f.png)

## Database

An entity diagram is shown displaying the attributes for the object in the application

![bmi](https://user-images.githubusercontent.com/48153566/120951644-39b69200-c741-11eb-91c7-27b13b19b0f4.png)

The three attributes utilised were Height, Weight & BMI


## Risk Assessment

A risk assessment register was made to identify the potential risks faced by the project and how they would be prevented and dealt with upon occurence

Initial risk assessment pre development:

![initialriskassessment](https://user-images.githubusercontent.com/48153566/120951660-40450980-c741-11eb-9fa7-bfb6708e9cb6.png)

Risk assessment after app development:

![second risk](https://user-images.githubusercontent.com/48153566/120951672-476c1780-c741-11eb-9a6c-2ccdb5713267.png)

# Test Plan

Test plans were also used to identify what sections of the program were expected to be tested & how

![testplanscreenshot (2)](https://user-images.githubusercontent.com/48153566/120951736-708ca800-c741-11eb-955a-28546b819e55.png)


# Test Results

PyTest was used to test the functionalities of my project, The tests used were automated by Jenkins; running whenever the the app was deployed onto the server. Results of test are shown below alongside a snippet of the test logs

![testshit](https://user-images.githubusercontent.com/48153566/120951759-797d7980-c741-11eb-9a27-9373922058b1.png)

![testlog](https://user-images.githubusercontent.com/48153566/120951766-7d110080-c741-11eb-990f-dcbff9452324.png)

# Continuous Integration

Continuous Integration Pipeline was used to show how the app would not only be designed but also developed and deployed to the user in an automated process

Shown below is the CI Pipeline for my BMI Application:

![CIpipeline](https://user-images.githubusercontent.com/48153566/120951690-505ce900-c741-11eb-8a83-058973600603.png)


# Architecture

**Docker Compose** was used to define and run multiple containers at the same time, functions such as build and push allowed for these functionalities to be used for application development/deployment

**Docker Swarm** was used as an orchestration tool allowing for the automation of the maintenance of this project. It utilises virtual machines & replaces failed containers instantly allowing for instant rollout of application updates

**Nginx** is utilised as a load balancer as well as a reverse proxy. Users can utilise the nginx server url to view the website. Nginx has also been used to due its light weight resource use as well as being scaled easily with minimal hardware

**Ansible playbooks** were used to set up the build environment for the app


# Service Configuration

Service 1 displays the website to the user and stores results in a database, service 2 and 3 generate random objects, Service 4 produces a result based off service 2 and 3 to then be sent to Service 1 as an output

![servicesdiagram](https://user-images.githubusercontent.com/48153566/120951828-a467cd80-c741-11eb-99ef-d8e8d1684ba7.png)

# Front End Design

Below is an image showcasing an example of the front end of the application

![appworking](https://user-images.githubusercontent.com/48153566/120951855-b9dcf780-c741-11eb-92fc-424420c9a646.png)

![jenkinshit](https://user-images.githubusercontent.com/48153566/120951861-be091500-c741-11eb-9b09-de652e398c9b.png)

# Author

Goke Tegbe
