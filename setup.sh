#/!/bin/bash

sudo gem install bundler --no-ri --no-rdoc
bundle install --path vendor/bundle --binstubs
./bin/librarian-chef install
sudo ./bin/chef-client -z -o 'sprout-osx-settings::default'
