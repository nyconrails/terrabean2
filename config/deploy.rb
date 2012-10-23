require 'bundler/capistrano'
set :application, "terrabean"
set :repository,  "git@github.com:nyconrails/terrabean2.git"
set :user, "railsapps"
set :use_sudo, false
set :deploy_to, "/home/railsapps/public_html/#{application}"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "terrabean.nycdevshop.com"                          # Your HTTP server, Apache/etc
role :app, "terrabean.nycdevshop.com"                          # This may be the same as your `Web` server
role :db,  "terrabean.nycdevshop.com", :primary => true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

load 'deploy/assets'

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end