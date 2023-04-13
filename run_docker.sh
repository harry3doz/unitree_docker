#!/bin/sh

sudo docker run -it --rm --name $1 --net host --privileged -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix $2
