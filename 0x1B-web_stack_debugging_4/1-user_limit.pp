Bexec { 'replace a setting line':
  command => '/usr/bin/sudo /bin/sed -i "s/hard nofile 5/hard nofile 30048/g" /etc/security/limits.conf',
  }

exec { 'replace a setting line':
  command => '/usr/bin/sudo /bin/sed -i "s/soft nofile 4/soft nofile 10048/g" /etc/security/limits.conf,
  }

exec { 'replace a setting line':
  command => '/usr/bin/sudo /sbin/sysctl -p',
  }