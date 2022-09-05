#!groovy

pipeline {
  agent none
  stages {
    stage('Git Clone') {
      agent any
      steps {
        sh 'git clone https://github.com/sonuchoudhari/demo-project.git'
        sh 'cd demo-project/'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t sonuchoudhari/sample-tomcat-appln-tls:latest .'
      }
    }
    stage('Docker Push') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push sonuchoudhari/sample-tomcat-appln-tls:latest'
        }
      }
    }
  }
}
