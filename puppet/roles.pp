#vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4:
##############################################################
# @filename : roles.pp
# @created : Tue, 23 Nov 2010 22:25:47 +1100
# @last changed: Tue 07 Jun 2011 21:51:36 EST
# @author : Mick Pollard <aussielunix@gmail.com>
##############################################################
# define the inheritance heirarchy for different
# roles
# class common to all servers
#
class standardbuild {
  include motd
  include sudo
  class { 'ssh': }
  class { 'sysstat': sardays => '30' }
  include git
  include user
  include augeas
}

