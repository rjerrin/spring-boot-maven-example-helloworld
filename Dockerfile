FROM  ubuntu:18.04
RUN  apt-get update -y
RUN  apt-get install -y openjdk-8-jdk-headless
RUN  apt-get install -y maven
RUN mkdir -p /usr/local/app
ADD  .     /usr/local/app
WORKDIR   /usr/local/app
ENTRYPOINT  [ "/usr/local/app/startapp.sh" ]
