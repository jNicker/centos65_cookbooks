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

packages = [
  "ImageMagick",
  "ImageMagick-devel",
  "nodejs"
]

packages.each do |pkg|
  package pkg do
    action :install
  end
end




