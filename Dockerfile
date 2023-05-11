# this is our base image.
# It sets the foundation to build the rest of our image off of
# this particular base image already has python3.8 installed
FROM python:3.10-alpine

# copy our app directory to the image's file system
COPY ./app /app

# install the Flask module in our image
RUN pip3 install flask

# When our container boots up, this command will run as the first thing
CMD ["python3", "/app/website.py"]

# our container needs to be visible from the host system.
# exposing the port 3000 of our container allows the host system
# to communicate with our app via port 3000
EXPOSE 3000
