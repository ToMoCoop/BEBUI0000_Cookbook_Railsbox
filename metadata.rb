name             'cookbook_railsbox'
maintainer       'Fred Thompson'
maintainer_email 'fred.thompson@buildempire.co.uk'
license          'Apache 2.0'
description      'Ruby on Rails server, ready for Capistrano deployment.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.5.0'

recipe 'cookbook_railsbox', 'Ruby on Rails server, ready for Capistrano deployment.'

%w{ ubuntu }.each do |os|
  supports os
end

%w{build-essential sqlite newrelic-sysmond cookbook_databox cookbook_rackbox imagemagick rackspace_cloudmonitoring rackspace_cloudbackup}.each do |cb|
  depends cb
end