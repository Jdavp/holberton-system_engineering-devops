#Client configuration file (w/ Puppet)
exec { 'echo':
path	    => '/usr/bin/echo',
command     => 'echo -e "IdentityFile ~/.ssh/holberton\nPasswordAuthentication no"',`
}
