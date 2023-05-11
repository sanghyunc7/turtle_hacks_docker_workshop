# turtle_hacks_docker_workshop
For TurtleHacks docker workshop

# Creating and running an image locally

1. Make an account at dockerhub: [hub.docker.com](https://hub.docker.com/)
Remember your docker username, it will used later in this tutorial.

2. Open file app/website.py and edit the "Hello World!" to something else like "Hello YOUR_NAME!"

3. From the CLI, navigate to your project's root directory and build your Dockerfile (don't forget the spaced period at the end).
Also, take a look inside the Dockerfile and see what it's doing:
```
docker build -t DOCKERHUB_USERNAME/turtlehacks .
```

4. View your local images:
```
docker image ls
```

5. Run your image:
```
docker run -p 3000:3000 DOCKERHUB_USERNAME/turtlehacks
```

6. To find your CONTAINER_NAME:
```
docker ps -a
```

7. Go to your web browser, and navigate to http://127.0.0.1:3000

8. To stop your container:
```
docker stop CONTAINER_NAME
```
If you wish to restart the container:
```
docker restart CONTAINER_NAME
```

# Push an image to the registry

1. Login to docker hub from your CLI (follow username/password instruction given by prompt):
```
docker login
```

2. Upload your image to dockerhub:
```
docker push DOCKERHUB_USERNAME/turtlehacks
```

# Pull an image that your friend (or me) has published and deploy it:

1. Pull image:
```
docker pull YOUR_FRIENDS_DOCKERHUB_USERNAME/turtlehacks
```

2. Run image (note: you cannot use the same port for multiple containers, so you must stop your previous one or use a new port):
```
# to stop a container
docker stop CONTAINER_NAME
# Run your friend's image using same port 3000 on host
docker run -p 3000:3000 YOUR_FRIENDS_DOCKERHUB_USERNAME/turtlehacks
# or run your friend's image using a different port, say 4000 on host
docker run -p 4000:3000 YOUR_FRIENDS_DOCKERHUB_USERNAME/turtlehacks
```
