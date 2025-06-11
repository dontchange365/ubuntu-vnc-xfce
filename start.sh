#!/bin/bash

mkdir -p ~/.vnc
echo "000000" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

vncserver :1
export DISPLAY=:1

xfce4-session &

websockify --web=/root/noVNC 6080 localhost:5901