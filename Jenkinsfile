def readpom
pipeline{

agent any

tools{
maven 'maven3.8.6'
 }
stages{
    stage('checkout'){
      steps{
    git 'https://github.com/devillierscbe/hello-world-war.git'
       }
    }
    stage('MavenBuild'){
      steps{
        sh "mvn clean package"
       }
    }
    stage('DockerBuild'){
      steps{
       script{
       readpom = readMavenPom file: 'pom.xml';
        def pomversion = readpom.version;
        sh "docker build -t robinksk/sample-eks:${pomversion} ."
      }
     } 
   }
   stage('DockerPush'){
       steps{
        script{
        readpom = readMavenPom file: 'pom.xml';
         def pomversion = readpom.version;
        withCredentials([string(credentialsId: 'DOCKER_HUB_CREDENTIALS', variable: 'DOCKER_HUB_CREDENTIALS')]) {
          sh "docker login -u robinksk -p ${DOCKER_HUB_CREDENTIALS}"
     }
        sh "docker push robinksk/sample-eks:${pomversion}"
       }
      }
   }
    stage('Deploy to Kubernetes'){
        steps{
         script{
         readpom = readMavenPom file: 'pom.xml';
          def pomversion = readpom.version;
          echo "${pomversion}"
          sh "chmod +x changeTag.sh"
          sh "./changeTag.sh ${pomversion}"
         sshagent(['EKS_demo1']) {
         sh "scp -o StrictHostKeyChecking=no Deploy-pod.yml ubuntu@13.233.201.17:/home/ubuntu/" 
         script{
                            
                            try{
                                 sh 'ssh ubuntu@13.233.201.17 kubectl apply -f .'
                            }catch(error){
                                 sh 'ssh ubuntu@13.233.201.17 kubectl create -f .'
                             }
          }
         }
        }
      }
   }
 }
}
