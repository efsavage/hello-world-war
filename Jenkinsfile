pipeline {
    agent any
    stages {
        stage('clone step') {
            steps {
                sh 'git clone https://github.com/Kavyangowda/hello-world-war.git'
            }
        }
         stage('build step') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
