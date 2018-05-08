# Define Bash Version. Scripts written from v4.4
FROM ubuntu:latest
RUN useradd -ms /bin/bash wyrm
USER wyrm
WORKDIR /home/wyrm
ADD . /home/wyrm
RUN bash makedirs.sh
RUN bash makefiles.sh
RUN rm *; exit 0
ENTRYPOINT bash
