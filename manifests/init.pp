# Class: motd
# ===========================
#
# Install a standardized motd across all your nodes.
#
#
# Examples
# --------
#
# @example
# include ::motd
#
# Authors
# -------
#
# Adam Dodman <hello@adam-ant.co.uk>
#
# Copyright
# ---------
#
# Copyright 2018 Adam Dodman, unless otherwise noted.
#
class motd {
  $motd_hash = {
    'ascii'       => generate('/bin/sh', '-c', "/usr/bin/figlet -cw 60 ${$facts['networking']['hostname']}"),
  }

  file { '/etc/motd':
    content =>  epp('motd/motd.epp', $motd_hash),
  }
}
