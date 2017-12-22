#
# Cookbook:: dokuwiki
# Recipe:: dokuwiki
#
# Copyright:: 2017, The Authors, All Rights Reserved.
## Create the destination directory
directory '/var/www/tha.local/public_html/mycms' do
  owner 'www-data'
  group 'www-data'
  mode '0700'
  action :create
  recursive true
end

### Tarball command depends on the tarball cookbook, this should be a requirement under metadata.rb ###
tar_extract 'http://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz' do
  group 'www-data'
  user 'www-data'
  action :extract
  target_dir '/var/www/tha.local/public_html/mycms'
  tar_flags [ '--strip-components 1' ]  
  creates '/var/www/tha.local/public_html/mycms/COPYING'
end

