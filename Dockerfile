FROM dustynv/ros:humble-desktop-l4t-r35.1.0

# create ros2 workspace
ARG ROS_WS=/home/ros2_ws
RUN mkdir -p ${ROS_WS}/src

RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 42D5A192B819C5DA
RUN apt update && apt install --no-install-recommends -y \
  vim liblcm-dev \
  && rm -rf /var/lib/apt/lists/* \
  && apt clean

ADD ./ws ${ROS_WS}/src

EXPOSE 8080

WORKDIR ${ROS_WS}
