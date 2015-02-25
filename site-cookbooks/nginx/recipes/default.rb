#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "epel-release" do
  action :install
end

package "nginx" do
  action :install
end

file "/etc/nginx/conf.d/default.conf" do
  action :delete
end

file "/etc/nginx/conf.d/virtual.conf" do
  action :delete
end

file "/etc/nginx/conf.d/ssl.conf" do
  action :delete
end

service "nginx" do
  action [:enable, :restart]
end
