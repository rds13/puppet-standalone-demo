#!/usr/bin/env ruby

set :user, 'root'
set :ssh_options, { :forward_agent => true }
default_run_options[:pty] = true

host = ENV['HOST']
host ||= 'puppet-dev-01'

def prompt_with_default(var, default)
  set(var) do
    Capistrano::CLI.ui.ask "#{var} [#{default}] : "
  end
  set var, default if eval("#{var.to_s}.empty?")
end

namespace :puppet do

  desc "prep server - install ruby + rubygems + puppet + git and clone github repos"
  task :prep, :hosts => host do
    options = ENV['options'] || ENV['OPTIONS']
    run "apt-get install -q -y ruby rubygems libshadow-ruby1.8 git-core libruby-extras"
    run "gem install puppet --no-rdoc --no-ri "
    run "git clone git://github.com/rds13/puppet-standalone-demo.git /opt/"
    run "cd /opt/ && git submodule init && git submodule update"
  end

  desc "update puppet repos from github"
  task :up, :hosts => host do
    run "cd /opt/ && git pull"
  end

  desc "runs puppet on remote host - Params:  HOST OPTIONS"
  task :go, :hosts => host do
    options = ENV['options'] || ENV['OPTIONS']
    run "/var/lib/gems/1.8/bin/puppet apply --verbose /opt/puppet/init.pp --modulepath=/opt/puppet/modules #{options}"
  end

end

#desc "deploy html site to linode - Params: HOST"
#task :deploy, :hosts => host do
#  prompt_with_default(:domain, "devops.lunix.com.au")
#  run "cd /opt/html/ && cp -a . /var/www/#{domain}/"
#end
