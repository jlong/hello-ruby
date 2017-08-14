node {
  stage "Checkout"
  checkout scm

  stage "Bundle install"
  sh "bundle install"

  stage "Test"
  sh "bundle exec rake test"
}
