#!/bin/sh
sudo docker run -it --rm -p 127.0.0.1:5901:5901 -e USER=root -v `pwd`/userdata:/data dockerfile/ubuntu-desktop \
	    bash -c "vncserver :1 -geometry 800x600 -depth 24 && DISPLAY=:1 chromium-browser --no-sandbox --user-data-dir=/data && bash"
