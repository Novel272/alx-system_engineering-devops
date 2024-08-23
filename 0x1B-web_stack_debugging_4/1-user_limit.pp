# login with holberton user an opn a file without any error message.
file { 'loginFile':
    ensure  => present,
    path    => '/etc/security/limits.conf',
    content => '#File erased'
}
