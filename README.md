# ROS Kinetic + Gazebo on Docker HOWTO

This tutorial is focused on those people that have Ubuntu 14.04 + ROS Indigo and they want to run Gazebo 7 or later.

## Step 1: Install Docker
Install docker https://docs.docker.com/engine/installation/linux/ubuntu/

To run docker without super user:

      sudo groupadd docker
      sudo gpasswd -a ${USER} docker
      sudo service docker restart

## Step 2: Use NVIDIA acceleration

Install nvidia-docker (to get HW acceleration) https://github.com/NVIDIA/nvidia-docker/wiki

## Step 3: Creating the container

This repository contain the Dockerfile. Move into the directory containing the file and type

The command below will **create** the container from the base image if it doesn't exist and log you in. 

    docker build -t ros-kinetic-gazebo7 .

## Step 4: Start the container

To make it easier, I created the launcher **launch_docker.sh** (you might need to call **chmod +x ./launch_docker.sh** first).

     ./launch_docker.sh

# References

* http://wiki.ros.org/docker/Tutorials/Docker
* http://wiki.ros.org/docker/Tutorials/Hardware%20Acceleration
* http://wiki.ros.org/docker/Tutorials/GUI

