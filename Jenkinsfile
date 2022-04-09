
pipeline {
    agent none
    stages {
        stage('checkout') {
agent { label 'java' } 
            steps {
                sh 'git clone https://github.com/darshanbguru/hello-world-war.git'
            }
        }

stage('build') {
agent { label 'java' } 
            steps {
                sh 'mvn clean package'
            }
        }
stage('deploy') {
agent { label 'java' } 
            steps {
                sh 'cp /var/lib/jenkins/workspace/project123/target/hello-world-war-1.0.0 /opt/apache-tomcat-8.5.78/webapps'
            }
        }
        
    }
    
}
