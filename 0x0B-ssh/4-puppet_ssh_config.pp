#Client configuration file (w/ Puppet)
exec { 'resource title':
path	    => '/etc/ssh/ssh_config',
command     => 'echo -e "IdentityFile ~/.ssh/holberton\nPasswordAuthentication no"',`
}
