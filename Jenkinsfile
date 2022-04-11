pipeline {
    agent { label 'java4' } 
    stages {
        stage('checkout') {
            steps {
                sh 'git clone https://github.com/SarithaTptr/hello-world-war.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('deploy') {
            steps {
                sh 'cp /home/slave-3/workspace/44/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.62/webapps'
            }
        }
}
}
