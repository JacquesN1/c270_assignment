pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'sudo docker pull jacquesguinebault/c270-assignment'
            }
        }

        stage('Run') {
            steps {
                sh 'sudo service docker stop'
                sh 'sudo service docker start'
                sh 'sudo docker run -p 81:8081 -d jacquesguinebault/c270-assignment'
            }
        }

    }
}
