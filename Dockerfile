# Using Nginx image as the base image
FROM nginx:latest

# Copying website content to container's Nginx default directory
COPY ./website /usr/share/nginx/html

# Expose port 80 outside the container
EXPOSE 80
