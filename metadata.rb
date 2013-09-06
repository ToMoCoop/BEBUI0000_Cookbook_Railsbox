maintainer       'Fred Thompson'
maintainer_email 'fred.thompson@buildempire.co.uk'
license          'Apache 2.0'
description      'Ruby on Rails server, ready for Capistrano deployment.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.3'

recipe 'cookbook_railsbox', 'Ruby on Rails server, ready for Capistrano deployment.'

%w{ ubuntu }.each do |os|
  supports os
end

%w{build-essential sqlite databox rackbox imagemagick}.each do |cb|
  depends cb
end

depends 'newrelic', git: 'git@github.com:heavywater/chef-newrelic.git'