# Add a custom HTTP header with Puppet
exec { 'command':
  command  => 'sudo apt-get -y update;
  sudo apt-get -y install nginx;
  sudo sed -i "/listen 80 default_server;/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default;
  service nginx restart',
  provider => shell,
}