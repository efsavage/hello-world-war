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
  }
}
