#
# Cookbook:: dokuwiki
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved.
## Perform an update on initial ##
apt_update 'update'

### Setup an update daily ###
apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

# Install nginx web server
package 'nginx' do
  action :install
end

# Install php7
package %w(php7.0-fpm php7.0-cli php-apcu php7.0-gd php7.0-xml php7.0-curl php7.0-json php7.0-mcrypt php7.0-cgi php7.0) do
  action :install
end

# start and enable web server
service 'nginx' do
  action [ :enable, :start ]
end
