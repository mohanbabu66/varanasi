pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git 'https://github.com/mohanbabu66/varanasi.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t varanasi1:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker rm -f varanasi99 || true
                docker run -d -p 9000:9000 --name varanasi99 varanasi1:latest
                '''
            }
        }

        stage('Verify Container') {
            steps {
                sh 'docker ps'
            }
        }
    }
}
