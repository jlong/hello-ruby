node {
  stage "Checkout"
  checkout scm

  stage "Test"
  sh "bundle install"
  sh "bundle exec rake test"
}
