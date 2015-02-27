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

group "wheel" do
  action :modify
  members "deployer"
  append true
end

cookbook_file "deployer-passwordless-sudo" do
  path "/etc/sudoers.d/deployer"
  action :create_if_missing
  mode "0440"
end

ssh_authorized_keys "deployer" do
  home "/home/deployer"
  ssh_keys ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCbOQynW+fb8CHT62gnTRRn5djb+ZXD+Lg0t2zf5ydrGIcGhSf9wWVIBcmINT8/OUQEHwcFv5Q0Oo/ZFzo8/mvpZS41szhwdSLIUzvAnMmqYzNrHq4FVOIKQVaB5CX2RCPWSDPMTHmUqfgOkAxM4GIqVS13rTaFbY00OXnHSo8t04BImeFR3N81HKvYOPid65KlEtCjOhE2b3+CrBXGvTGkLKK6J+TNMiI7R7VUYLaAqBnBmnBx99B9a37xmmLHbJPaW+QUhPAt5wYm7F3cyVCcKFrb8JFXBbGUMn9Kpea4Klu4/8XjShxflKQcwcfPtd3ev8bGrtZ/R1Bz41H6s+G3 xavier.lopez@datalink.com"]
end

