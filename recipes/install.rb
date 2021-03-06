package ['apache2', 'php', 'php-mysql', 'php-memcache'] do
  only_if { node['platform_family'] == 'debian' }
  action :install
  notifies :start, 'service[apache2]', :immediately
end
package   ['httpd', 'php', 'php-mysql', 'php-pecl-memcached'] do
  only_if { node['platform_family'] == 'rhel' }
  action :install
  notifies :start, 'service[httpd]', :immediately
end
