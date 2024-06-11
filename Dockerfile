
FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y cowsay fortune netcat && \
    apt-get clean

COPY wisecow.sh /usr/local/bin/wisecow.sh


RUN chmod +x /usr/local/bin/wisecow.sh


EXPOSE 4499

ENTRYPOINT ["/usr/local/bin/wisecow.sh"]
