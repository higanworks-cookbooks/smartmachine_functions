#
# Cookbook Name:: smartmachine_functions
# Recipe:: add_joyent_attributes
#
# Copyright 2013, HiganWorks LLC
#
# Author: sawanoboriyu@higanworks.com
# Licence: MIT
#

include_recipe "smartmachine_functions::tools"

case node['platform']
when "smartos"
  Chef::Log.info "update attributes from sm-summary"
  if ::File.exist?("/opt/local/bin/sm-summary_json") then
    joyent_attrs = JSON.parse(`/opt/local/bin/sm-summary_json -j`)
    node.set['joyent'] = joyent_attrs
  end
end
