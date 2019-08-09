pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                script{
                  echo 'Starting to build docker image'
                  def myEnv = docker.build 'my-environment:snapshot'
                
                  myEnv.inside {
                 
                  echo "build successfull"
                }
                }
                
            }
        }
    }
}
