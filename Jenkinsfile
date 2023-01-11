pipeline {
    agent any
    stages {
        stage('version'){
            steps {
                sh 'ruby --version'
            }
        }
        stage('hello'){
            steps{
                sh 'cucumber features/is_it_friday_yet.feature'
            }
        }
    }
}