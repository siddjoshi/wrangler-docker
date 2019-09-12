FROM centos:7
RUN yum -y update; \
    yum install -y epel-release curl gcc-c++ make;

RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -

## install nodejs 
RUN yum install -y nodejs

## Update npm
RUN npm install npm@latest -g

CMD [ "/bin/bash" ]