pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'sudo docker container prune -f'
                sh 'sudo docker build . -t jenkins-build'
            }
        }

        stage('Run') {
            steps {
                sh 'sudo docker run -d -p 81:8081 -d jenkins-build'
            }
        }
    }
}

