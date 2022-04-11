pipeline {
    agent any
    stages {
        [ tool name: 'docker', type: 'dockerTool' ]
        stage('Build') {
            agent {
                docker {
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
