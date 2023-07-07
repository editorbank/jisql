FROM ubuntu
USER root
RUN apt update
#RUN apt install -y git


# Install OpenJDK-11
RUN apt install -y openjdk-11-jre
#RUN apt install -y openjdk-11-jdk ant maven
#ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/
#RUN export JAVA_HOME
#ENV MAVEN_OPTS "-Xmx4096M -XX:MaxPermSize=4096m"

#RUN apt upgrade -y
RUN apt-get clean
COPY ./drv /app/drv
COPY ./jisql-2.0.11 /app/jisql-2.0.11
COPY ./jisql /app
WORKDIR /app
#ENTRYPOINT mvn