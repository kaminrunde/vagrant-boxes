include_recipe "apt"
include_recipe "build-essential"
include_recipe "openssl"
include_recipe "mysql::server"
include_recipe "mysql::client"
include_recipe "apache2"
include_recipe "apache2::mod_php5"  
include_recipe "apache2::mod_ssl" 
include_recipe "php"
include_recipe "phpmyadmin"

package "git" do
  action :install
end

package "php5-mcrypt" do
  action :install
end

package "php5-curl" do
  action :install
end

package "php-apc" do
  action :install
end

web_app "dev_system" do
  server_name node["hostname"]
	server_aliases [
    # node["hostname"]
  ]  
  docroot "/vagrant/platform"
  allow_override "All"
  template "default.conf.erb"
end