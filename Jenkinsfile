pipeline {
    agent { label 'ramu' }
    stages {
        stage('clone step') {
            steps {
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/Kavyangowda/hello-world-war.git'
            }
        }
         stage('build step') {
            steps {
                sh 'mvn package'
            }
        }
        stage('deploay step') {
            steps {9.
                sh 'sudo mv /home/ramu/workspace/hello_world_1/target/hello-world-war-1.0.0.war /home/ramu/workspace/hello_world_1/target/pipeline_hello-world-war-1.0.0.war
                sh 'sudo cp /home/ramu/workspace/hello_world_1/target/pipeline_hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.64/webapps'
    }
}
