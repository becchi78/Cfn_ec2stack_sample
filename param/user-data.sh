#!/bin/bash
# Update the system
yum update -y

# Install Docker
amazon-linux-extras install docker -y

# Start Docker service
service docker start

# Add the ec2-user to the docker group
usermod -a -G docker ec2-user
