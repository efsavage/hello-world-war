pipeline{
      agent { label 'last1' }
      stages{
      stage('check out'){
            //used to checkout from git
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
      sh "docker build -t lohith1994/dockerrepo:1.0 ."
      }
      }
       stage('publish'){
                  steps{
                        sh "docker login -u lohith1994 -p Lohith@1994"
                        sh "docker push lohith1994/dockerrepo:1.0"
                  }
            }
            stage('deploy'){
                  agent { label 'slave2' }
                  steps{
                        //sh "docker login -u lohith1994 -p Lohith@1994"
                        //not necessary as it'll refer to docker hub is (default) & repo is public
                        sh "docker pull lohith1994/dockerrepo:1.0"
                        sh "docker rm -f docker1"
                        sh "docker run -d -p 8040:8080 --name docker1 lohith1994/dockerrepo:1.0"
                  }
            }
      }
      }
