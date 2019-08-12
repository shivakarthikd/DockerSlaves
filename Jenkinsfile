pipeline {
    agent any
    stages {
        stage('Build image') {
            script {
                  echo 'Starting to build docker image'
                  def myEnv=docker.image('maven:3-alpine')
            
                  steps {
                        myEnv.inside {
                              sh 'mvn -B -DskipTests clean package'
                        }
                  }
            }
        }
        stage('Test') {
            script {
                 steps {
                      myEnv.inside {
                          sh 'mvn test'
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
