#
# Cookbook Name:: heroku
# Recipe:: default
#

include_recipe 'heroku::gem' if node[:heroku][:installation_method] == 'gem'
include_recipe 'heroku::standalone' if node[:heroku][:installation_method] == 'standalone'
include_recipe 'heroku"::apt_toolbelt' if node[:heroku][:installation_method] == 'apt_toolbelt'
