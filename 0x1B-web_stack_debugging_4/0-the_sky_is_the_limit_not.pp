# change line with puppet
exec { 'replace a setting line':
  command  => 'sed -i "s/15/5000/g" /etc/default/nginx',
  provider => shell
  }->
exec { 'restart-nginx':
  command => 'sudo service nginx restart',
  path    => ['/usr/bin', '/usr/sbin', '/bin']
  }