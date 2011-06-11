#!/usr/bin/env ruby

set :user, 'lunix'
set :ssh_options, { :forward_agent => true }
default_run_options[:pty] = true

host = ENV['HOST']
host ||= 'ubuntu-dev01'

def prompt_with_default(var, default)
  set(var) do
    Capistrano::CLI.ui.ask "#{var} [#{default}] : "
  end
  set var, default if eval("#{var.to_s}.empty?")
end
namespace :puppet do

  desc "prep server - install ruby + rubygems + rump + git and clone github repos"
  task :prep, :hosts => host do
    options = ENV['options'] || ENV['OPTIONS']
    sudo "apt-get install -q -y ruby rubygems libshadow-ruby1.8 git-core"
    sudo "gem install rump"
    sudo "/var/lib/gems/1.8/bin/rump clone git://github.com/aussielunix/puppet-standalone-demo.git /opt/"
  end

  desc "update puppet repos from github"
  task :up, :hosts => host do
    options = ENV['options'] || ENV['OPTIONS']
    run "cd /opt/ && #{sudo} git pull"
  end

  desc "runs puppet on remote host - Params:  HOST OPTIONS"
  task :go, :hosts => host do
    options = ENV['options'] || ENV['OPTIONS']
    run "#{sudo} /var/lib/gems/1.8/bin/rump go --verbose /opt/puppet/init.pp --modulepath=/opt/puppet/modules #{options}"
  end

end

desc "deploy html site to linode - Params: HOST"
task :deploy, :hosts => host do
  prompt_with_default(:domain, "devops.lunix.com.au")
  run "cd /opt/html/ && cp -a . /var/www/#{domain}/"
end
