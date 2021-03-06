# config valid for current version and patch releases of Capistrano
lock "~> 3.11.2"

set :application, 'kaigo'
set :repo_url, "git@github.com:nabetaro/kaigonagano-server.git"

set :rbenv_type, :system
set :rbenv_ruby, '2.6.5'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/var/www/kaigo'

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, 'config/master.key'

# Default value for linked_dirs is []
append :linked_dirs, "log", 'storage', "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
set :default_env, {
      'KAIGONAGANO_SERVER_DATABASE_PASSWORD' => ENV['KAIGONAGANO_SERVER_DATABASE_PASSWORD']
    }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
