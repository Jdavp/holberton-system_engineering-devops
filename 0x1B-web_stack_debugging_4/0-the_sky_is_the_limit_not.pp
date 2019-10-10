exec { 'replace a setting line':
  command => '/usr/bin/sudo /bin/sed -i "s/n- 15/-n 2000/g" /etc/default/nginx',
  }