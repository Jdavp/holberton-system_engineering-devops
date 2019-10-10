# replace line at os level
exec { 'replace a setting soft':
  command     => 'sed -i "s/5/30048/g" /etc/security/limits.conf',
  provider    => shell,
  }->
exec { 'replace a setting hard':
  command     => 'sed -i "s/4/10048/g" /etc/security/limits.conf',
  provider    => shell, 
  }->
exec { 'replace a setting line':
  command     => 'sysctl -p',
  provider    => shell, 
  }
