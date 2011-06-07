#vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4:
##############################################################
# @filename: manifests/init.pp
# @created : Thu, 11 Feb 2010 15:21:05 +1100
# @last changed: Tue 07 Jun 2011 21:36:42 EST
# @author : Mick Pollard <aussielunix@gmail.com>
##############################################################

import "nodes"
import "roles"

Exec { path => "/usr/bin:/usr/sbin/:/bin:/sbin" }

