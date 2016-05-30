#!/bin/bash -ie

source "/opt/ros/$ROS_DISTRO/setup.bash"
source "catkin_ws/devel/setup.bash" --extend

roslaunch rapp_face_detection face_detection.launch
