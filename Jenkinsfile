pipeline {
    agent any
    stages {
        stage('version'){
            steps {
                sh 'ruby --version'
                sh 'cucumber --version'
            }
        }
        stage('run test'){
            steps{
                sh 'cucumber features/is_it_friday_yet.feature'
            }
        }
    }
}