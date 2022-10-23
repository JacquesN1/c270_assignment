pipeline {
    agent any
    environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub-cred')
	}
    stages {
        stage('Build') {
            steps {
                sh 'sudo docker build . -t jacquesguinebault/c270-assignment'
            }
        }

        stage('Run') {
            steps {
                sh 'sudo service docker stop'
                sh 'sudo service docker start'
                sh 'sudo docker run -d -p 81:8081 -d jacquesguinebault/c270-assignment'
            }
        }

        stage('Push to Dockerhub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                sh 'sudo docker push jacquesguinebault/c270-assignment'
            }
        }
    }
    post {
		always {
			sh 'sudo docker logout'
		}
	}
}
