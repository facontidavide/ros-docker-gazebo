#!/bin/bash 
xhost +local:root

nvidia-docker run -it \
--env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
-v "$HOME/host_docker:/home/user/host_docker" \
-e LOCAL_USER_ID=`id -u $USER` \
-e LOCAL_GROUP_ID=`id -g $USER` \
-e LOCAL_GROUP_NAME=`id -gn $USER` \
 ros-davide

xhost -local:root

