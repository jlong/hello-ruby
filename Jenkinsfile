pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'bundle install --jobs=4 --retry=3 --path vendor/bundle'
        sh 'bundle exec rspec'
      }
    }
  }
}
