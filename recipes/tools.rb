#
# Cookbook Name:: smartmachine_functions
# Recipe:: tools
#
# Copyright 2013, HiganWorks LLC
#
# Author: sawanoboriyu@higanworks.com
# Licence: MIT
#

cookbook_file "/opt/local/bin/sm-summary_json" do
  source "sm-summary_json"
  owner  "root"
  group  "root"
  mode   "0755"
  action :create
end

