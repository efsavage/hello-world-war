pipeline {
  agent any
  tools {
    maven 'maven-3.6.3' 
  }
  stages {
   stage ('git clone') {
      steps {
        script {
          git 'https://github.com/sandeepkandula12/hello-world-war.git'
        }
      }
    }
  
    stage ('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage ('Deploy') {
      steps {
        script {
          deploy adapters: [tomcat8(credentialsId: 'tomcat', path: '', url: 'http://172.31.29.5:9090')], contextPath: null, war: '**/*.war'
        }
      }
    }
  }
}
