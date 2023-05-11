# turtle_hacks_docker_workshop
For TurtleHacks docker workshop

# Creating and running an image locally

1. Make an account at dockerhub: [hub.docker.com](https://hub.docker.com/)

2. Open file app/website.py and edit the "Hello World!" to something else like "Hello YOUR_NAME!"

3. From the CLI, navigate to your project's root directory and build your Dockerfile (don't forget the spaced period at the end):
```
docker build -t DOCKERHUB_USERNAME/turtlehacks .
```

4. After successfully building your image, run this to view your images:
<code> docker image ls </code>

5. Run your image:
<code> docker run -p 3000:3000 DOCKERHUB_USERNAME/turtlehacks </code>

6. To find your CONTAINER_NAME:
<code> docker ps -a </code>

7. Go to your web browser, and navigate to http://127.0.0.1:3000

8. To stop your container:
<code> docker stop CONTAINER_NAME </code>
If you wish to restart the container:
<code> docker restart CONTAINER_NAME </code>

# Push an image to the registry

1. Login to docker hub from your CLI (follow username/password instruction given by prompt):
<code> docker login </code>

2. Upload your image to dockerhub:
<code> docker push DOCKERHUB_USERNAME/turtlehacks </code>

# Pull an image that your friend (or me) has published and deploy it:

1. Pull image:
<code> docker pull YOUR_FRIENDS_DOCKERHUB_USERNAME/turtlehacks </code>

2. Run image (note: you cannot use the same port for multiple containers, so you must stop your previous one or use a new port):
<code>
  # to stop a container
  docker stop CONTAINER_NAME
  # Run new image using same port 3000 on host
  docker run -p 3000:3000 DOCKERHUB_USERNAME/turtlehacks
  # or run new image using a different port, say 4000 on host
  docker run -p 4000:3000 DOCKERHUB_USERNAME/turtlehacks
</code>
