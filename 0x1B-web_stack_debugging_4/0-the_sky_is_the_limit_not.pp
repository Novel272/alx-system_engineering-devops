#  fix stack so tht we gt to 0
file { 'replace last line':
    ensure  => present,
    path    => '/etc/default/nginx',
    content => 'ULIMIT="-n 4096"',
}

service { 'nginx':
    ensure    => running,
    subscribe => File['/etc/default/nginx']
}
