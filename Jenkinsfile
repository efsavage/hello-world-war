pipeline {
    agent { label 'my_slave1' }
    stages {
        stage('checkout') { 
            steps {
              sh "git pull https://github.com/Lohras/hello-world-war.git"
            }
        }
stage('build') { 
            steps {
              sh "mvn clean package"
            }
        }  
        Stage('deploy') {
            steps {
                sh " sudo cp /home/jenkins/workspace/Pipejob1/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.60/webapps"
            }
        }
    }
}
