pipeline {
    agent { label 'java' }
    stages {
        stage('checkout') { 
            steps {
                sh "rm -rf*"
              sh "git clone https://github.com/Sagar1895/hello-world-war"
            }
        }
stage('build') { 
            steps {
              sh "mvn clean package"
            }
        }        
    }
}
