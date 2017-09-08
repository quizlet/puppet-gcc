# Public: Install gcc via homebrew
#
# Examples
#
#   include gcc
class gcc {

  case $::operatingsystem {
    'Darwin': {
      include homebrew

      homebrew::formula { 'gcc': }

      package { 'boxen/brews/gcc':
        ensure  => '7.2.0',
      }

      package { ['boxen/brews/apple-gcc42', 'boxen/brews/gcc48']:
        ensure => 'absent'
      }
    }

    default: {
      package { 'gcc': }
    }
  }
}
