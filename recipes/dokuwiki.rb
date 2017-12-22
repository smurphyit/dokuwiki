#
# Cookbook:: dokuwiki
# Recipe:: dokuwiki
#
# Copyright:: 2017, The Authors, All Rights Reserved.
## Create the destination directory
directory '/var/www/tha.local/public_html/' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
  recursive true
end

### Tarball command depends on the tarball cookbook, this should be a requirement under metadata.rb ###
tar_extract 'http://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz' do
  action :extract
  target_dir '/var/www/tha.local/public_html/'
end

