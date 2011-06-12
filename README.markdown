# puppet-standalone-demo

** Now refactored for puppet 2.6 **

## In here you will find:

* a capistrano script - for orchestration
* a basic collection of puppet manifests and modules

## What this does right now

* takes a fresh deployed Ubuntu Lucid instance to a working bare linux server.

    git clone git://github.com/aussielunix/puppet-standalone-demo.git  
    cd puppet-standalone-demo  
    cap puppet:prep HOST="173.255.200.9"  
    cap puppet:go HOST="173.255.200.9" OPTIONS="--noop"  
    cap puppet:go HOST="173.255.200.9"  
    cap deploy HOST="173.255.200.9" (you'll be asked for the domain of the vhost)  

## TODO

* new puppet role for LAMP
* document modifying the puppet modules in the github wiki

