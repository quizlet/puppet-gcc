# Public: Install gcc via homebrew
#
# Examples
#
#   include gcc
class gcc {

  case $::operatingsystem {
    'Darwin': {
      include homebrew

      homebrew::formula { 'gcc5': }

      package { 'gcc':
        ensure  => present
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
