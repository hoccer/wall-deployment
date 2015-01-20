lock '3.2.1'

set :application, 'webclient-backend'
set :runner, 'talk'
set :deploy_to, "/home/#{fetch :runner}/#{fetch :application}"
set :linked_dirs, ['log', 'encrypted_attachments', 'decrypted_attachments', 'database']

set :scm, :jenkins
set :repo_url, "https://jenkins.hoccer.de/job/hoccer-talk-develop"
set :jenkins_artifact_file, "#{fetch :application}/target/#{fetch :application}-0.0.1-SNAPSHOT-jar-with-dependencies.jar"
set :deployed_artifact_filename, "#{fetch :application}.jar"
set :jenkins_insecure, true

before 'deploy', 'jenkins:load_secrets'

before 'deploy:starting', 'deploy:create_deploy_path_with_correct_permissions'
after 'deploy:starting', 'deploy:fix_linked_dirs_permissions'

after 'deploy:updating', 'config:create'

before 'deploy:publishing', 'upstart:prepare_script'
after 'deploy:published', 'upstart:restart'
