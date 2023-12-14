#!/bin/bash
# Pull the latest image from Docker Hub
sudo docker pull pranavponugoti16/docker-test:latest

# Stop and remove the existing container
sudo docker stop docker-site
sudo docker rm docker-site

# Spin up container with new image
sudo docker run -d --name docker-site -p 80:80 pranavponugoti16/docker-test
