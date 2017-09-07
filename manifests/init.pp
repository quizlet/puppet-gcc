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

      package { 'boxen/brews/gcc5':
        ensure  => '5.4.0',
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
