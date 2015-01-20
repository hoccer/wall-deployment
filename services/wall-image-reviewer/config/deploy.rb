lock '3.2.1'

set :application, 'wall-image-reviewer'
set :runner, 'talk'
set :deploy_to, "/home/#{fetch :runner}/#{fetch :application}"

set :scm, :jenkins
set :repo_url, "https://jenkins.hoccer.de/job/#{fetch :application}"
set :jenkins_artifact_path, 'archive/*'
set :jenkins_insecure, true

before 'deploy', 'jenkins:load_secrets'
before 'deploy:starting', 'deploy:create_deploy_path_with_correct_permissions'
