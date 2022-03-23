pipeline {
    agent { label 'slave2' }
    stages {
        stage('checkout') { 
            steps {
		sh " rm -rf /home/slave2/workspace/job_pip"
              sh "git clone https://github.com/Lohras/hello-world-war.git"
            }
        }
stage('build') { 
            steps {
	      sh "apt-get update"
	      sh "apt install default-jre"	
              sh "mvn clean package"
            }
        }  
stage('deploy') { 
            steps {
	      sh "cp /home/slave2/workspace/job_pip/"
  
