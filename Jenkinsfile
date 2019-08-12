pipeline {
    agent any
    stages {
        script{
                  echo 'Starting to build docker image'
                  def myEnv=docker.image('maven:3-alpine')
            }
        stage('Build image') {
            steps {
                  myEnv.inside {
                        sh 'mvn -B -DskipTests clean package'
                  }
            } 
        }
        stage('Test') {
            steps {
                 myEnv.inside {
                          sh 'mvn test'
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
