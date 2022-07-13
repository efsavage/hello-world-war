pipeline {
    agent any
    stages { 
        stage('checkout') {
            steps {
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/Kavana147/hello-world-war.git'
            }
         }
        stage('build') {
            steps {
                dir('hello-world-war') {
                    sh 'mvn package'
                }    
            }    
        }
        stage('deploy') {
            steps {
                sh 'sudo cp -r /var/lib/jenkins/workspace/Multipipeline_pipeline2/hello-world-war/target/hello-world-war-1.0.0 /opt/apache-tomcat-9.0.64/webapps/'
                sh 'sudo  sh /opt/apache-tomcat-9.0.64/bin/shutdown.sh'
                sh 'sudo  sh /opt/apache-tomcat-9.0.64/bin/startup.sh'
                sh 'echo "Successfully deployed"'
            }
        
        }
    }
    
}
