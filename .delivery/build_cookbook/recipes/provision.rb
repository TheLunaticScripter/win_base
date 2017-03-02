#
# Cookbook:: build_cookbook
# Recipe:: provision
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'delivery-truck::provision'

if node['delivery']['change']['stage'] == 'acceptance'
  delivery_test_kitchen 'provision_acceptance' do
    yaml '.kitchen.ec2.yml'
    driver 'ec2'
    action [:converge]
  end
end
