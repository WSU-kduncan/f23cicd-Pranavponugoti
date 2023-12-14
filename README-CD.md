# Project 5
- Name: Pranav Ponugoti
- Email: ponugoti.16@wright.edu

## Part 1 - Semantic Versioning
## CD Project Overview
### What - Overview
- This continuous deployment (CD) project is designed to automate the building and publishing of Docker images to DockerHub upon the creation of a new Git tag in the repository.
- It aims to streamline the deployment process by generating image tags based on Git tags and pushing these tagged images to DockerHub.

### Why - Purpose
The purpose of this workflow is to automate the image build and deployment process to DockerHub whenever a new Git tag is created. It ensures consistent deployment of the latest tagged version and facilitates version control of Docker images.

### Tools Used
- GitHub Actions: For automation of the build and push process.
- Docker: For containerization and image creation.
- DockerHub: To host and store Docker images.

### Generating a Git Tag
To generate a Git tag in this repository, follow these steps:
1. Locally, run `git tag -a <tag_name> -m "Tag message"`
    - `git tag -a 1.2.0 -m "new tag"`
2. Push the tag to the remote repository using `git push origin <tag_name>`
  - `git push origin 1.2.0`

### Behavior of GitHub Workflow
This GitHub workflow is triggered when a new tag is pushed to the repository. Upon tag creation, it uses GitHub Actions to perform the following steps:
1. Checkout the repository's code.
2. Set up Docker Buildx and login to Docker Hub.
3. Use docker/metadata-action to generate image tags from the Git tag version and `latest`.
4. Build and push Docker images to DockerHub with the generated image tags.

### GitHub Workflow Execution
- The workflow executes automatically when a new Git tag is pushed to the repository.
- It utilizes GitHub Actions to perform the build and push operations, ensuring that the Docker images are updated on DockerHub with the latest tagged version.

## Docker Hub Repository
[Link to Docker Hub Repository](https://hub.docker.com/repository/docker/pranavponugoti16/docker-test)

## Part 2 - Deployment

docker pull pranavponugoti16/docker-test:latest