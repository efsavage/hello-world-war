pipeline {
    agent any
    stages {
        stage('clone stage') {
            steps {
                sh 'rm-rf hello-world-war'
                sh 'git clone https://github.com/venkibiligere/hello-world-war.git'
            }
        }
 stage('build stage') {
            steps {
                sh 'mvn package'
            }
        }
  stage('deploy stage') {
            steps {
                sh 'sudo cp /home/slave3/workspace/helloworldwar/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.64/webapps'
            }
        }
    }
}
