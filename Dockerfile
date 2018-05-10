FROM cloudbees/cje-mm:2.107.2.1

ADD https://raw.githubusercontent.com/mdelgin/jenkins-config-as-code/master/jenkins.yaml /var/jenkins_home/

ENV CASC_JENKINS_CONFIG /var/jenkins_home/jenkins.yaml
