cmake_minimum_required(VERSION 2.8.3)
project(rapp_face_detection)
set(ROS_BUILD_TYPE Release)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  roslib
  # rostest
  message_generation
  message_runtime
  cv_bridge
)

find_package(PkgConfig)

add_service_files(
  FILES
  FaceDetectionRosSrv.srv
)
generate_messages(
  DEPENDENCIES
  geometry_msgs
  )

## System dependencies are found with CMake's conventions
catkin_package(
  CATKIN_DEPENDS
    roscpp
    roslib
    message_runtime
    cv_bridge
    message_generation
    message_runtime
    geometry_msgs
  INCLUDE_DIRS
    include
)
## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

## ROS node executable
add_executable(face_detection_ros_node
  src/face_detector.cpp
  src/face_detection.cpp
  src/face_detection_node.cpp
)
target_link_libraries(face_detection_ros_node
  ${catkin_LIBRARIES}
)
add_dependencies(face_detection_ros_node
  rapp_face_detection_gencpp
  ${catkin_EXPORTED_TARGETS}
)

