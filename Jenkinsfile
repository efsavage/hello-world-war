pipeline {
    agent none
    stages {
        stage('Run Tests') {
            parallel {
                stage('Parallel Task1') {
                    agent {
                        label "java"
                    }
                    steps {
                        echo "Statement1: Testing Multi pipeline Parallel exicution"
                    }
                  }
                stage('Parallel Task2') {
                    agent {
                        label "java"
                    }
                    steps {
                        echo "Statement2: Testing Multi pipeline Parallel exicution"
                    }
                   }
            }
        }
    }
}
