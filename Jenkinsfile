pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'sudo docker rm -f $(sudo docker ps -a -q)'
                sh 'sudo docker build /home/jenkins/workspace/pipeline-01 -t jenkins-build'
            }
        }

        stage('Run') {
            steps {
                sh 'sudo docker run -d -p 81:8081 -d jenkins-build'
            }
        }
    }
}
