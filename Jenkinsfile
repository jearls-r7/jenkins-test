pipeline {
    agent any
    stages {
        stage('Copy Test Files To Pipeline Directory'){
            steps{
            sh "cp -a /tests/. /var/jenkins_home/workspace/test_job"
            }
        }
         stage('Build Container Image'){
            steps{
                sh """docker-compose -f docker-compose.yml up --build -d
                        echo "Checking current images"
                        docker images"""
            }
        }
        stage('Run Test'){
            steps{
                sh 'docker run hello_cucumber'
            }
        }
    }
}