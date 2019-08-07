FROM ubuntu:cosmic

RUN apt-get update
RUN apt-get install -y bash-completion curl less
RUN apt-get install -y ansible

VOLUME [ "/data" ]
ADD . /data/

EXPOSE 8080-8100

WORKDIR /data
SHELL ["/bin/bash"]
CMD [ "bash" ]
