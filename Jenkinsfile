pipeline {
    agent {
    docker {
       
        label 'docker'
      
    }
}
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'

                script {
                    
                    docker.build("my-image:${env.BUILD_ID}")
                   
                }
            }
        }
    }
}
