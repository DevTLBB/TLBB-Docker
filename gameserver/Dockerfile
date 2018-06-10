FROM ubuntu:14.04

WORKDIR /home/tlbb
RUN chmod -R 0777 /home/tlbb

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 unixodbc:i386 unixodbc-dev:i386 libmyodbc:i386 ssh mysql-client ; exit 0
RUN rm -rf /usr/share/libtool/libltdl/Makefile.in /var/cache/apt/archives/libltdl-dev_*ubuntu1_i386.deb
RUN apt-get install -y -f ; exit 0

EXPOSE 7384 3731
CMD ["tail","-f","/dev/null"]

