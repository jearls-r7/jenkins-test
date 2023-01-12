pipeline {
    agent any
    stages {
        stage('install dependancies'){
            steps {
                // sh 'curl -sSL https://get.rvm.io | bash -s stable'
                // sh 'rvm install 2.7.6'
                // sh 'rvm use 2.7.6'
                sh 'export PATH="/Users/jearls/.gem/ruby/2.3.0/bin:$PATH"'
                sh 'gem install cucumber --user-install'
            }
        }
         stage('version'){
            steps{
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