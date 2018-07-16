FROM hypriot/rpi-java

RUN apt-get update && apt-get install -y wget git python

ENV JENKINS_SLAVE_AGENT_PORT 50000
ENV JENKINS_HOME /var/jenkins_home

RUN mkdir -p $JENKINS_HOME \
  && chown 1000:1000 $JENKINS_HOME \
  && groupadd -g 1000 jenkins \
  && useradd -d "$JENKINS_HOME" -u 1000 -g 1000 -m -s /bin/bash jenkins

VOLUME $JENKINS_HOME

RUN mkdir -p /opt/jenkins && cd /opt/jenkins && \
    wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war

CMD java -jar /opt/jenkins/jenkins.war --prefix=$PREFIX

# Main page
EXPOSE 8080
# Slave agents
EXPOSE 50000