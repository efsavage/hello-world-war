pipeline {
    agent { label 'java' }
    stages {
        stage('checkout') { 
            steps {
              sh "git clone https://github.com/Sagar1895/hello-world-war"
            }
        }
stage('build') { 
            steps {
              sh "mvn clean package"
            }
        } 
        stage('deploy'){
            steps {
                sh " sudo cp /home/jenkins-slave/jenkins/workspace/pipe1/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.60/webapps"
            }
    }
    }
}
