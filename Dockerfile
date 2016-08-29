FROM debian
RUN apt-get -y update && \
    apt-get -y install zip build-essential autoconf bison python vim git && \
    apt-get clean
WORKDIR /opt
COPY bash2py-3.5.zip /opt
RUN unzip /opt/bash2py-3.5.zip 
WORKDIR /opt/bash2py-3.5
RUN mkdir /root/bin
RUN sh install
CMD /bin/bash
