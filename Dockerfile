############################################################
# Dockerfile to build Python Tensorflow API
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM eywalker/tensorflow

# File Author / Maintainer
MAINTAINER Hery

RUN apt-get update
RUN apt-get -y install git
RUN git clone https://github.com/heisthedon/cyclops-api.git

# Expose ports
EXPOSE 80

# Set the default directory where CMD will execute
WORKDIR /cyclops-api

# Get pip to download and install requirements:
RUN pip install -r requirement.txt

# Set appropriate permission
RUN chmod 755 -R .

# Set the default command to execute
# when creating a new container
# i.e. using CherryPy to serve the application
CMD python server.py 80
