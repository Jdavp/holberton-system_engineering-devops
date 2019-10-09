exec { 'replace a setting line':
  command => '/usr/bin/sudo /bin/sed -i "s/ULIMIT= '-n 15'/ULIMIT='-n 2000'/g" /etc/default/nginx',
  }