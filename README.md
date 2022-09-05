# demo-project

Commands:

To build, run and persist logs for sample application

1. docker build -t sample-tomcat-appln-tls .

2. docker volume create <volumename>

3. docker run -it -d -p 8080:8080 -v volumename:/usr/local/tomcat/webapps -v volumename:/usr/local/tomcat/logs --name sample-tomcat-appln-tls sample-tomcat-appln-tls

Pipeline:

Jenkinsfile is there in this repo

Jenkins installation manifest is there in "jenkins-k8s.yml" file

Logical architecture design of a URL shortening service saved as .png file


