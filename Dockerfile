FROM hypriot/rpi-java

RUN apt-get update && apt-get install -y wget git python

ENV JENKINS_SLAVE_AGENT_PORT 50000

RUN useradd -d /home/jenkins -u 1000 -m -s /bin/bash jenkins

VOLUME /home/jenkins
RUN chown -R jenkins /home/jenkins

RUN mkdir -p /opt/jenkins && cd /opt/jenkins && \
    wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war

CMD java -jar /opt/jenkins/jenkins.war --prefix=$PREFIX

# Main page
EXPOSE 8080
# Slave agents
EXPOSE 50000