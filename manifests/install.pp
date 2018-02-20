# This manifest is used to install figlet, required by the motd package.
# It should only be required on the puppet master.

class motd::install {
  if $facts['os']['family'] == 'Redhat' {
      include repoforge

      package { 'figlet':
        ensure  => present,
        require => Yumrepo['rpmforge'],
      }
  }

  else {
    package { 'figlet':
      ensure  => present,
    }
  }
}
