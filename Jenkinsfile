pipeline {
    agent {label 'slave3'}

    stages {
        stage('checkout') {
            steps {
                sh "pwd"
                sh "rm -rf hello-world-war"
                sh "git clone https://github.com/mhm1nh3/hello-world-war.git"
            }
        }
        stage('build') {
            steps {
                sh "ls"
                sh "cd hello-world-war"
                sh "mvn clean package"
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploy"
            }
        }
        stage('Monitor'){
            steps{
                echo "Monitor"
            }
        }
    }
}
