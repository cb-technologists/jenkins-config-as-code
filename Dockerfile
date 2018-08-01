FROM jenkinsci/jenkins
# FROM cloudbees/cloudbees-jenkins-team:2.107.2.1
# FROM cloudbees/cje-mm:2.107.2.1

LABEL maintainer "melgin@cloudbees.com"

USER root

# add config file to jenkins_home
COPY jenkins.yaml /usr/share/jenkins/ref/

# add environment variable to point to configuration file
ENV CASC_JENKINS_CONFIG /usr/share/jenkins/ref/jenkins.yaml

# Install plugin(s) that are not bundled by default
#ENV JENKINS_UC https://jenkins-updates.cloudbees.com
ENV JENKINS_UC https://updates.jenkins.io/experimental/update-center.json
ADD https://raw.githubusercontent.com/jenkinsci/docker/master/install-plugins.sh /usr/local/bin/install-plugins.sh
RUN chmod 755 /usr/local/bin/install-plugins.sh
ADD https://raw.githubusercontent.com/jenkinsci/docker/master/jenkins-support /usr/local/bin/jenkins-support
RUN chmod 755 /usr/local/bin/jenkins-support
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh $(cat /usr/share/jenkins/ref/plugins.txt)

RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state

USER jenkins