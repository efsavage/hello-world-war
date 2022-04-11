pipeline {
    agent ( label 'last1' )
        stages {
             stage('check') {
                steps {
                    sh ' mkdir -p folder '
            }
        }
    agent {
        docker { image 'node:16.13.1-alpine' }
    }
        stage('Test') {
            steps {
             
                sh 'node --version'
            }
        }
    }
}
