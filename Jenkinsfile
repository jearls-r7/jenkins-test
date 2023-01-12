pipeline {
    agent any
    stages {
        // stage('install dependancies'){
        //     steps {
        //         // sh 'gem install cucumber'
        //     }
        // }
         stage('version'){
            steps{
                sh 'rbenv install 2.7.6'
                sh 'rbenv global 2.7.6'
                sh 'ruby -v'
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