pipeline{
      agent { label 'javanode1' }
      stages{
      stage('check out'){
                  steps{
                  sh "rm -rf hello-world-war"
                  sh "git clone https://github.com/arunhs07/hello-world-war.git"
                  }
                  }
      stage('build'){
      steps{
      sh "pwd"
      sh "ls"
      sh "cd hello-world-war"
      sh "docker build -t arunhs07/arunnewfile:1.0 ."
      }
      }
       stage('publish'){
                  steps{
                        sh "docker login -u arunhs07 -p 9845682619@Aru"
                        sh "docker push arunhs07/arunnewfile:1.0"
                  }
            }
            stage('deploy'){
                  agent { label 'javanode2' }
                  steps{
                        sh "docker login -u arunhs07 -p 9845682619@Aru"
                        sh "docker pull arunhs07/arunnewfile:1.0"
                        sh "docker rm -f trail1"
                        sh "docker run -d -p 8085:8080 --name trail1 arunhs07/arunnewfile:1.0"
                  }
            }
      }
      }
