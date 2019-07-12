# Python Hello World server

# Choose a base image for container
FROM python:3.5

# Make sure that container is up to date
RUN apt-get update

# Install python packages
RUN pip install Flask

# Add the hello.py file from our system to container
ADD . /opt/webapp/

# Add environment variable to container
ENV FLASK_APP=hello.py

# Set working directory for container
WORKDIR /opt/webapp

# Expose port on docker container to our system
EXPOSE 5000

# Run application within the container
CMD ["flask", "run", "--host=0.0.0.0"]

