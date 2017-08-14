pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'bundle install && bundle exec rspec'
      }
    }
  }
}