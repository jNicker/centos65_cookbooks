#
# Cookbook Name:: rails-dependencies
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


package "epel-release" do
  action :install
end

package "imagmagik" do
  action :install
end

package "nodejs" do
  action :install
end


