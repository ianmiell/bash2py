FROM debian
COPY bash2py-3.5.zip /opt
RUN apt-get -y update
RUN apt-get -y install zip
RUN apt-get -y install build-essential
RUN apt-get -y install autoconf
RUN apt-get -y install bison
WORKDIR /opt
RUN unzip /opt/bash2py-3.5.zip 
WORKDIR /opt/bash2py-3.5
RUN mkdir /root/bin
RUN sh install
RUN mv /root/bin/bash2pyengine /usr/bin
RUN apt-get -y install python
RUN mv bash2py /usr/bin
CMD /bin/bash
