FROM debian:latest
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install telnet -y
RUN apt-get install netcat -y
CMD ["/bin/bash"]
