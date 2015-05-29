FROM    centos:centos6

RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

RUN     yum install -y npm

RUN	yum install -y git

COPY    ./src /src

RUN     cd /src; npm install --save 

EXPOSE  8181

CMD     ["node", "/src/index.js"]

