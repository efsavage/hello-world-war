pipeline {
    agent any

    tools {
        jdk 'jdk11'
        maven 'maven3'
    }

    stages {

        stage('Git Checkout') {
            steps {
                git 'https://github.com/sanjudhyan/hello-world-war.git'
            }
        }

        stage('Compile') {
            steps {
                sh "mvn compile"
            }
        }

        stage('Package') {
            steps {
                sh "mvn package"
            }
        }

        stage('Install') {
            steps {
                sh "mvn install"
            }
        }
    }

    post {
        success {
            echo "Build completed successfully!"
        }
        failure {
            echo "Build failed!"
        }
    }
}
