pipeline {
    agent any
    stages {
        stage('Build') {
            agent {
                docker {
                    tool name: 'docker', type: 'dockerTool'
                    image 'gradle:6.7-jdk11'
                                        reuseNode true
                }
            }
            steps {
                sh 'gradle --version'
            }
        }
    }
}
