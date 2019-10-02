# replace a setting line with puppet
exec { 'replace a line':
  command => '/bin/bash/sudo /bin/sed -i "s/class-wp-locale.phpp/class-wp-locale.php/g" var/www/html/wp-settings.php\',
     }