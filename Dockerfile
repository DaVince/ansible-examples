FROM ubuntu:cosmic

RUN apt-get update
RUN apt-get install -y bash-completion ansible

VOLUME [ "/data" ]
ADD . /data/

EXPOSE 80

WORKDIR /data
SHELL ["/bin/bash"]
CMD [ "bash" ]
