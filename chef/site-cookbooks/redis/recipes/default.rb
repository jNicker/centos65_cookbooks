#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


package "epel-release" do
  action :install
end

package "redis" do
  action :install
end

service "redis" do
  action [:enable, :restart]
end
