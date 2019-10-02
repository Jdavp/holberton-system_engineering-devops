# replace a setting line with puppet
exec { 'replace a line':
     command => '/bin/sed -i "s/require_once( ABSPATH . WPINC . '/class-wp-locale.phpp' ); require_once( ABSPATH . WPINC . '/class-wp-locale.php' );/g" var/www/html/wp-settings.php',
     }