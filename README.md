# Jenkins configuration as code demo
Simple demo of the [Jenkins Configuration as Code plugin](https://github.com/jenkinsci/configuration-as-code-plugin).

## How to run

### Locally (CloudBees Jenkins Team)
1. Ensure the Dockerfile parent image is set to `FROM cloudbees/cloudbees-jenkins-team:2.107.2.1`.
2. Run the `build-and-run.sh` script from the project root directory.

### Within CloudBees Jenkins Enterprise
1. In Operations Center, [add a new Managed Master Docker image](https://go.cloudbees.com/docs/cloudbees-documentation/pse-admin-guide/#_managing_docker_images_for_masters) pointing to the `mattelgin/casc-mm` [repository in Docker Hub](https://hub.docker.com/r/mattelgin/casc-mm/).
2. [Provision a new master](https://go.cloudbees.com/docs/cloudbees-documentation/pse-admin-guide/#_creating_a_new_managed_master) and specify the new Docker image.
