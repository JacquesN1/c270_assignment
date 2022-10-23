FROM ubuntu
RUN apt-get update
RUN apt-get -y install python3
WORKDIR /my-project
COPY . /my-project
ENTRYPOINT python3 server.py
