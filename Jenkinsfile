pipeline {
  agent {
    node {
      label 'default'
    }

  }
  stages {
    stage('Check running containers') {
      steps {
        git(url: 'https://github.com/rakesh635/hello-world-war.git', branch: 'master', poll: true)
      }
    }
    stage('Clone application repository') {
      steps {
        sh 'git clone -b master https://github.com/rakesh635/hello-world-war.git'
      }
    }
  }
}