FROM centos:latest

MAINTAINER t.goto

RUN yum -y install wget epel-release && \
wget -O /etc/yum.repos.d/cobbler26.repo http://download.opensuse.org/repositories/home:/libertas-ict:/cobbler26/CentOS_CentOS-7/home:libertas-ict:cobbler26.repo && \
yum -y install cobbler tftp-server dhcp openssl xinetd && \
yum -y update && \
yum clean all

RUN apachectl ; cobblerd ; cobbler get-loaders ; pkill cobblerd ; pkill httpd

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
