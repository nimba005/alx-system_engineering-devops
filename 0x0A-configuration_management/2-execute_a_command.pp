# kill process killmenow

exec { 'killmenow':
  command  => 'pkill killmenow',
  path     => '/bin/:usr/bin',
  onlyif => 'pgrep killmenow',
}
