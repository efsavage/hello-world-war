pipeline{
      agent { label 'last1' }
      stages{
      stage('check out'){
                  steps{
                  sh "rm -rf hello-world-war"
                  sh "git clone https://github.com/Lohras/hello-world-war.git"
                  }
                  }
      stage('build'){
      steps{
      sh "pwd"
      sh "ls"
      sh "cd hello-world-war"
      sh "docker build -t lohith2022.jfrog.io/docker:1.0 ."
      }
      }
       stage('publish'){
                  steps{
                        sh "docker login -u lohith2022.jfrog.io --p Lohith@1994"
                        sh "docker push lohith2022.jfrog.io/docker:1.0"
                  }
            }
            stage('deploy'){
                  agent { label 'slave2' }
                  steps{
                        sh "docker login -u lohith2022.jfrog.io -p Lohith@1994"
                        sh "docker pull lohith2022.jfrog.io/docker:1.0"
                        //sh "docker rm -f \$(docker ps  -a -q --filter ancestor=sandy1791994/docwarimage:1.0)"
                        sh "docker run -d -p 8050:8080 --name docker1 lohith2022.jfrog.io/docker:1.0"
                  }
            }
      }
      }
