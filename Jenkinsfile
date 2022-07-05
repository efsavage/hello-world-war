pipeline {
    agent { label 'slave4' }
    parameters {
        choice(name: 'choices', choices: ['ONE', 'TWO'])
    }
    stages {
        stage('clone step') {
            steps {
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/venkibiligere/hello-world-war.git'
            }
        }
  stage('Build') {
            steps {
                sh 'mvn package'
            }
  }
      stage('Deploy step') {
            steps {
                sh 'sudo cp /home/slave4/workspace/choiceparameter/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.64/webapps/'      
            }
        }
    }
}
