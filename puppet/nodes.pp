#vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4:
##############################################################
# @filename : nodes.pp
# @created : Mon, 07 Jun 2010 16:16:01 +1000
# @last changed: Tue 07 Jun 2011 21:52:32 EST
# @author : Mick Pollard <aussielunix@gmail.com>
##############################################################
#
# default node to be used by all
node "default" {
  include standardbuild
}
