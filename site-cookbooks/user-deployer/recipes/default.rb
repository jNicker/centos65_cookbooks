#
# Cookbook Name:: user-deployer
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


user "deployer" do
  password "$1$9sihPIWQ$P2fvHHuCLVVnGZFl6UTrA1"
  action :create
end
