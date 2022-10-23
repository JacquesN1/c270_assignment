pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'sudo docker rm -f $(sudo docker ps -a -q)'
                sh 'sudo docker build /home/jenkins/workspace/job-node-01 -t pipeline-01'
            }
        }

        stage('Run') {
            steps {
                sh 'sudo service docker stop'
                sh 'sudo service docker start'
                sh 'sudo docker run -d -p 81:8081 -d pipeline-01'
            }
        }
    }
}

