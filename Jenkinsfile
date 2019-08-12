pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                script{
                  echo 'Starting to build docker image'
                  def myEnv=docker.image('maven:3-alpine')
                
                  myEnv.inside {
                           sh 'mvn -B -DskipTests clean package'
                           stage('Test') {
                           steps {
                               sh 'mvn test'
                          }
                  
                  }
                }
            }
        }
                      
        
            post {
                  always {
                        junit 'target/surefire-reports/*.xml'
                  }
             }
         }
    }
}
