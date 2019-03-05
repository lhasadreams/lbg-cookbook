#
# Cookbook:: ubs-cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Create the UBS Security file
case node['os']
when 'linux'
  file '/lbgcheck' do
      owner 'root'
      group 'root'
      mode '0755'
      action :create
  end
end
