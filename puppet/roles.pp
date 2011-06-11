#vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4:
##############################################################
# @filename : roles.pp
# @created : Tue, 23 Nov 2010 22:25:47 +1100
# @last changed: Sat 11 Jun 2011 17:01:35 EST
# @author : Mick Pollard <aussielunix@gmail.com>
##############################################################
# define the inheritance heirarchy for different
# roles
# class common to all servers
#
class standardbuild {
  include motd
  include sudo
  class { 'ssh': permitrootlogin => 'without-password' }
  class { 'sysstat': sardays => '30' }
  include git
  include user
  include augeas
}

