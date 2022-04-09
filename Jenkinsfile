
pipeline {
    agent none
    stages {
        stage('checkout') {
agent { label 'java' } 
            steps {
                sh 'git clone https://github.com/darshanbguru/hello-world-war.git'
            }
        }

stage('build') {
agent { label 'java' } 
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
