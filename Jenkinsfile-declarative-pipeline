pipeline {

  agent any

  stages {

    stage('Preparation') {
      steps {
        git 'git@github.com:mdimarino/hello-world-war.git'
      }
    }

    stage('Build') {
      steps {
        sh "mvn clean package"
      }
    }

    stage('Saving Results') {
      steps {
        archiveArtifacts 'target/*.war'
      }
    }

  }

}
