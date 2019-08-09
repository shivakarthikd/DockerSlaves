pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                script{
                  echo 'Starting to build docker image'
                  def myEnv = docker.build 'maven:latest'
                
                  myEnv.inside {
                 
                  sh 'mvn -B -DskipTests clean package'
                }
                }
                
            }
        }
    }
}
