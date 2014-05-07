# config valid only for Capistrano 3.1
lock '3.1.0'
set :application, 'hoccer-receiver'
set :deploy_to, "/var/www/#{fetch(:application)}"

set :scm, :jenkins
set :repo_url, "https://jenkins.hoccer.de/job/#{fetch(:application)}"
set :jenkins_artifact_file, "target/hoccer-receiver-0.0.1-SNAPSHOT-jar-with-dependencies.jar"
set :jenkins_insecure, true
set :jenkins_user, 'hoccer'
ask :jenkins_pass, echo: false

# namespace :deploy do
#   after :published, :restart do
#     on roles(:jar) do |host|
#       with path: :deploy_to do
#           execute 'java -jar', :target_file 
#       end
#     end
#   end
# end
