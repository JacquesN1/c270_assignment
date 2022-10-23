pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker pull jacquesguinebault/c270-assignment'
                sh 'sudo docker run -p 81:8081 -d jacquesguinebault/c270-assignment'
            }
        }
    }
}
