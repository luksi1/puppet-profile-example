# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include profile::nginx::hello_world
class profile::nginx::hello_world {

  package {'nginx':
    ensure => 'installed',
  }

  file {'/etc/nginx/conf.d/hello.world.conf':
    source => 'puppet:///modules/profile/hello.world.conf',
  }

  service  {'nginx':
    ensure => 'running',
    require => File['/etc/nginx/conf.d/hello.world.conf'],
  }
}
