#
# Cookbook Name:: smartmachine_functions
# Recipe:: mdata_permission
#
# Copyright 2013, HiganWorks LLC
#
# Author: sawanoboriyu@higanworks.com
# Licence: MIT
#

directory "/var/run/smartdc" do
  action :create
  owner "root"
  group "root"
  mode  "0700"
end


