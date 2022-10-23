pipeline {
    agent any
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'jacquesguinebault/c270-assignment:latest'
                    reuseNode true
                }
            }
            steps {
                sh 'sudo docker run -p 81:8081 -d jacquesguinebault/c270-assignment'
            }
        }
    }
}

