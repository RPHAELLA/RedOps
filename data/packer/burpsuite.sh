#!/bin/sh -eux

# Set java environment
DEBIAN_FRONTEND=noninteractive apt-get install -y openjdk-8-jre  

# Copy required files
mv /tmp/burpsuite .

# Install python and dependencies
DEBIAN_FRONTEND=noninteractive apt-get install -y python3
DEBIAN_FRONTEND=noninteractive apt-get install -y python3-pip
pip3 install pexpect

# Execute script to activate burp
python3 burpsuite/activate-burp.py

cp burpsuite/burpsuite_pro.jar burpsuite/burpsuite
mv burpsuite/burpsuite /usr/bin/burpsuite

