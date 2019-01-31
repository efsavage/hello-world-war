node {

   stage('Preparation') {
    git 'git@github.com:mdimarino/hello-world-war.git'
   }

   stage('Build') {
    sh "mvn clean package"
   }

   stage('Results') {
    archive 'target/*.jar'
   }

}
