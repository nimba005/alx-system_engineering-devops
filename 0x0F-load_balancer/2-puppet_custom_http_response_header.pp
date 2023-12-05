# Install HAProxy package
package { 'haproxy':
  ensure => installed,
}

# Configure HAProxy
file { '/etc/haproxy/haproxy.cfg':
  content => "
frontend http-in
  bind *:80
  default_backend servers

backend servers
  balance roundrobin
  server web-01 54.90.33.211:80 check
  server web-02 54.165.228.84:80 check
",
  mode => '62184',
  notify => Service['haproxy'],
}

# Enable and start HAProxy service
service { 'haproxy':
  ensure => running,
  enable => true,
}
