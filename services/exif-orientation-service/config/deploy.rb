lock '3.2.1'

set :application, 'exif-orientation-service'
set :repo_url, "git@github.com:hoccer/#{fetch :application}.git"

set :runner, 'talk'
set :deploy_to, "/home/#{fetch :runner}/#{fetch :application}"
set :linked_dirs, ['log', 'images']

set :rvm_type, :system
set :rvm_ruby_version, "2.1.1@#{fetch :application}"

before 'deploy:starting', 'deploy:create_deploy_path_with_correct_permissions'
after 'deploy:starting', 'deploy:fix_linked_dirs_permissions'

before 'deploy:publishing', 'upstart:prepare_script'
after 'deploy:published', 'upstart:restart'
