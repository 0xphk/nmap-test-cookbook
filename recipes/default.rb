#
# Cookbook Name:: nmap
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

## install package nmap
package 'nmap' do
  action :install
end

## create nmap script
template '/etc/nmap.sh' do
  source 'nmap.sh.erb'
  mode '0755'
  owner 'root'
  group 'root'
end

## create subdir in /var/www
directory '/var/www/nmap' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  recursive true
end

## create output html if not exist
output_file = '/var/www/nmap/index.html'
bash 'nmap.sh' do
  user 'root'
  code <<-EOH
  /etc/nmap.sh > #{output_file}
  EOH
  not_if { ::File.exist?(output_file) }
end

# add cronentry to run every 10min
cron_nmap = '/etc/cron.d/cron_nmap'
template cron_nmap do
  source 'cron_nmap.erb'
  owner 'root'
  mode '0644'
  notifies :restart, 'service[cron]'
end

## restart cron
service 'cron' do
  action :nothing
  supports :restart => true
end
