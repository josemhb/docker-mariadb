FROM ubuntu:14.04
MAINTAINER Jose Manuel Hernandez (josemhb@gmail.com)
ENV MARIADB_DB NONE
ENV MARIADB_USER docker

#Add MariaDB repo and install
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CBCB082A1BB943DB \
  && echo "deb http://ftp.osuosl.org/pub/mariadb/repo/5.5/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list \
  && apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes mariadb-server-5.5 \
  && apt-get clean

# Config some parameters
ADD my.cnf /etc/mysql/conf.d/my.cnf

#Attach volume for persistent data
VOLUME /var/lib/mysql

#MariaDB port 3306
EXPOSE 3306
CMD ["mysqld.bin"]
