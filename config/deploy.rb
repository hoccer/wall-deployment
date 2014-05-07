# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'hoccer-receiver'
set :deploy_to, "/var/www/#{fetch(:application)}"

set :scm, :jenkins
set :repo_url, "https://jenkins.hoccer.de/job/#{fetch(:application)}"
set :jenkins_artifact_file, "target/hoccer-receiver-0.0.1-SNAPSHOT-jar-with-dependencies.jar"

before 'deploy', 'jenkins:load_secrets'
