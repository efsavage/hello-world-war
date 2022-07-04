pipeline {
    agent any 
    stages {
        stage('clone stage') {
            steps {
                sh 'rm-rf hello-world-war'
                sh 'git clone https://github.com/venkibiligere/hello-world-war.git'
            }
        }
 stage('build stage') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
