#Client configuration file (w/ Puppet)
exec { 'add line':
path	    => '/usr/bin',
command     => '/bin/echo -e "IdentityFile ~/.ssh/holberton\nPasswordAuthentication no">> /etc/ssh/ssh_config',`
}
