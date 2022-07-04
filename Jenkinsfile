pipeline {
    agent { label 'ramu' }
    stages {
        stage('clone step') {
            steps {
                sh 'rm -rf hello-world-war'
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
