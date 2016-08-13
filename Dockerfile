FROM centos:6
MAINTAINER Sebin John <sebin.john.sebin@gmail.com>
COPY files/cloudera.repo /etc/yum.repos.d/
RUN yum -y install oracle-j2sdk1.7 && \
    yum clean all && \
    alternatives --install /usr/bin/java java /usr/java/jdk1.7.0_67-cloudera/bin/java 1900101
