# turtle_hacks_docker_workshop
For TurtleHacks docker workshop


in your CLI, run this (don't forget the spaced period at the end):
docker build -t <your-name> .
<your-name> will be the name of your image

after successfully building your image, run this to view your images:
docker image ls


run your image:
docker run -p 3000:3000 <your-name>

go to your web browser, and navigate to http://127.0.0.1:3000