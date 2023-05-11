# turtle_hacks_docker_workshop
For TurtleHacks docker workshop

# Creating and running an image locally
1. Open to app/website.py and edit the "Hello World!" to something else like "Hello John!"

2. Go to the project's root directory and run this (don't forget the spaced period at the end):
<code> docker build -t your_name . </code> 
your_name should be the name of your image

3. After successfully building your image, run this to view your images:
<code> docker image ls </code>

4. Run your image:
<code> docker run -p 3000:3000 your_name </code>

5. Go to your web browser, and navigate to http://127.0.0.1:3000

# Push an image to others

