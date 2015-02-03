### chef-rabbitmq-cookbook

#### Goals

  - learn chef best practices and project structures
  - install rabbitmq with management console in as few steps as possible with chef
  - distill the more complicated tutorial from http://misheska.com/blog/2013/06/16/getting-started-writing-chef-cookbooks-the-berkshelf-way/

#### Requirements

 - Virtualbox
 - Vagrant
 - install ChefDK https://downloads.chef.io/chef-dk/
 - commented rbenv out of my .bashrc file and replaced with eval "$(chef shell-init bash)" for chefdk ruby
 - vagrant plugin install vagrant-berkshelf (chef dependency system)
 - vagrant plugin install vagrant-omnibus (chef-solo bootstrapping)

#### How this project was created

    berks cookbook chef-rabbitmq
    cd chef-rabbitmq && bundle install
    remove all files and folders except for those being used in this tutorial
    remove the cruft from the generated Vagrantfile
    add depends 'rabbitmq' to metadata.rb
    setup rabbitmq in the recipes/default.rb file
    log into rabbitmq managment http://172.28.128.3:15672/
