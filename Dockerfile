FROM ubuntu:16.04
COPY sources.list /etc/apt/sources.list
RUN mkdir -p /home/ht/ \
&& apt-get -y update \
&& apt-get install -y gcc libc6-dev make
WORKDIR /home/ht/
ADD Dockerfile1.txt  /home/ht/
COPY helloworld.c  /home/ht/
RUN cd  /home/ht/ && gcc helloworld.c -o helloworld
ENTRYPOINT /home/ht/helloworld
