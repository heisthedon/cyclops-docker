# Cyclops Docker Project

## Let's Build Docker Image
docker build --no-cache -t docker-cyclops .

## Run it into Container
docker run -p 8080:80 docker-cyclops
