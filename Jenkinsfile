pipeline {
    agent none
    stages {
        stage('Run Tests') {
            parallel {
                stage('Parellel Test') {
                    agent {
                        label "java"
                    }
                    steps {
                        echo "Statement1: Testing Multi pipeline parelele exicution"
                    }
                  }
                stage('Test On Linux') {
                    agent {
                        label "java"
                    }
                    steps {
                        echo "Statement2: Testing Multi pipeline parelele exicution"
                    }
                   }
            }
        }
    }
}
