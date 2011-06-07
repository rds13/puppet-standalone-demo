# puppet-standalone-demo

** Currently being refactored for puppet 2.6 **
** so the Capistrano script WILL FAIL ! **

## In here you will find:

* a capistrano script - for orchestration - BORKED
* a Vagrantfile - for tesing/developing this repos - [Vagrant](http://vagrantup.com/)
* a basic collection of puppet manifests and modules

## What this does right now

* takes a fresh deployed Ubuntu Lucid instance to a working bare linux server.


    git clone git://github.com/aussielunix/puppet-standalone-demo.git
    cd puppet-standalone-demo
    git submodule init
    git submodule update
    vagrant up
    vagrant ssh
    puppet apply --verbose /opt/puppet/init.pp --modulepath=/opt/puppet/modules/

### TODO


* Fix cap script to be puppet 2.6 ready
* new puppet role for LAMP
* document modifying the puppet modules in the github wiki
