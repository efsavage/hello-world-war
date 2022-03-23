pipeline {
agent any
  stages {
    stage ("Checkout") {
      steps {
      sh "git clone https://github.com/Dileep-HL/hello-world-war"
      }
    }
    stage ("Build") {
      steps {
      sh "mvn clean package"
      }
    }
    stage ("Deploy") {
      steps {
      sh "sudo cp -r /home/slave-1/jenkins/workspace/Jenkin_pipeline/target/* /opt/apache-tomcat-9.0.60/webapps/"
      }
    }
    
  }
}
