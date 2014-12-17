notify {'puppet doing some things': }

file {'/tmp/puppet':
  # switch the contents and look in
  # /var/lib/puppet/clinetbucket
  #contents => 'puppet did something different',
  content => 'puppet did something else',
}
