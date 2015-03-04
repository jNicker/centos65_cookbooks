#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, Datalink
#
# All rights reserved - Do Not Redistribute
#

package "epel-release" do
  action :install
end

package "nginx" do
  action :install
end

nginx_default_files = [
  "default.conf",
  "virtual.conf",
  "ssl.conf"
]

nginx_default_files.each do |f|
  file "/etc/nginx/conf.d/#{f}" do
    action :delete
  end
end

service "nginx" do
  action [:enable, :restart]
end
