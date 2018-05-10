FROM cloudbees/cje-mm:2.107.2.1

# add config file to jenkins_home
ADD https://raw.githubusercontent.com/mdelgin/jenkins-config-as-code/master/jenkins.yaml /var/jenkins_home/

# add environment variable to point to configuration file
ENV CASC_JENKINS_CONFIG /var/jenkins_home/jenkins.yaml

# copy Jenkins Configuration as Code plugin to plugins folder
ADD http://updates.jenkins-ci.org/download/plugins/configuration-as-code/0.5-alpha/configuration-as-code.hpi /var/jenkins_home/plugins/
