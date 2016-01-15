# My first dockerized node app



FROM ubuntu:14.04

ADD id_rsa /root/.ssh/
ADD start.sh /tmp/

# install nodejs and npm
RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    git \
    git-core \
    build-essential \
    ssh \
 && ln -s /usr/bin/nodejs /usr/bin/node \
 && chmod +x /tmp/start.sh \
 && chmod 600 /root/.ssh/* \
 && echo "Host bitbucket.org\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config \
 && apt-get clean

 EXPOSE 8181

CMD ./tmp/start.sh