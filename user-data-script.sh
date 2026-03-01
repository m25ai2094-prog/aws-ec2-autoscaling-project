#!/bin/bash
yum update -y
yum install -y python3
echo "Auto Scaling Web Server Working" > index.html
nohup python3 -m http.server 8000 &
