#
# Cookbook:: lbg-cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Create the LBG Security file
file '/lbgcheck' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end
