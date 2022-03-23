pipeline {
    agent { label 'slave2' }
    stages {
        stage('checkout') { 
            steps {
		sh "git pull https://github.com/Lohras/hello-world-war.git"
            }
        }
stage('build') { 
            steps {
		    sh " apt install maven -y "
              sh "mvn clean package"
            }
        }  
stage('deploy') { 
            steps {
	      sh "cp /home/slave2/workspace/job_pip/"
	    }
}
    }
}
