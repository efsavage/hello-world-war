pipeline {
    agent {
        docker { image 'node:16.13.1-alpine' }
    }
    stages {
        stage('Test') {
            steps {
                tool name: 'docker', type: 'dockerTool'
                sh 'node --version'
            }
        }
    }
}
