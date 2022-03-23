pipeline {
    agent { label 'slave2' }
    stages {
        stage('checkout') { 
            steps {
              sh "git clone https://github.com/Lohras/hello-world-war.git"
            }
        }
stage('build') { 
            steps {
              sh "mvn clean package"
            }
        }  
       
    }
}
