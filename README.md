

## Getting started

1. Change git clone line in `start.sh` to your own repo.
2. Update Dockerfile and change `bitbucket.org` to the hostname of your git provider.
3. Add your ssh public key (probably ~/.ssh/id_rsa.pub) to the working directory

## Building

### Create image from Dockerfile

docker build -t <your-image-name>:<version> .

example `docker build -t hello-docker:1.0 .`

### Run image

docker run -d -p <hostport>:<containerport> --name <containername> <imagename>:<version>

example `docker run -d -p 8585:8181 --name hellodocker hello-docker:1.0`


## Export image as tar

docker save hello-docker:1.0 > hello-docker-1.0.tar

## Import tar to docker images

docker load < hello-docker-1.0.tar