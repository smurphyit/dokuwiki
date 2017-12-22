#
# Cookbook:: dokuwiki
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'dokuwiki::install' # install nginx php etc
include_recipe 'dokuwiki::dokuwiki'

