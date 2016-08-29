FROM debian
RUN apt-get -y update && apt-get -y install zip build-essential autoconf bison python vim && apt-get clean
WORKDIR /opt
COPY bash2py-3.5.zip /opt
RUN unzip /opt/bash2py-3.5.zip 
WORKDIR /opt/bash2py-3.5
RUN mkdir /root/bin
RUN sh install
RUN echo 'export PATH=$PATH:/opt/bash2py-3.5' >> /root/.bashrc
RUN apt-get -y install git
CMD /bin/bash
