FROM ubuntu
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt update
RUN apt install git -y
RUN git clone https://github.com/RaymondHb/restapiserv.git
RUN apt-get install openjdk-8-jre -y
RUN apt install maven -y
RUN cd /restapitutorial
RUN mvn clean install 
RUN cd /target
RUN ls
