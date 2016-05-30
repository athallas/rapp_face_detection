#!/bin/bash -ie

source "/opt/ros/$ROS_DISTRO/setup.bash"

mkdir -p catkin_ws/src
mv rapp_face_detection catkin_ws/src
cd catkin_ws

# Here install all required dependencies must be installed

catkin_make
