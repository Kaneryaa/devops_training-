#!/bin/bash

#    ------  Containerization of Application ---------- #
#  
#    *************** Scenario ********************
#
#    - multitier application stack
#    - running on vms
#    - regular deployment 
#    - continuos changes 
#   
#   **************** problem *********************
#     - high CapEx & OpEx (capital expenditure & operation expendendture )
#     - human errors in deployment 
#     - Not compatiable with microservice architecture 
#     - Resource Wastage 
#     - Not portable , env not in sync
#     
#  ******************** solutions ***************
#    - containers 
#    - consumes low resource 
#    - suits very well for microservice design 
#    -
#  ********************* solution of containers******
#    -  Deployment via images 
#    -  same container images across envirment 
#    - Reusable & repeatable 
#    
#  ***************** tools **************
#  1. Docker (container runtime envirment )
#  2. java stack application use 
#
#  *********** steps ***************
#  1. steps to setup our stack services 
#  2. find right base images from docker hub 
#  3. write Dockerfile to customize images
#  4. write docker-compose.yml file to run multi containers 
#  5. test it & host images on dockerhub 

