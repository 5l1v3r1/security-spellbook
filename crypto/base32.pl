#!/usr/bin/perl

#
# Use: ./base32.pl
# Heitor Gouvêa - hi@heitorgouvea.me

use 5.010;
use strict;
use warnings;
use MIME::Base32;

sub main {
  my $string = $ARGV[0];

  if ($string) {
    my $decoded = MIME::Base32::decode($string);

    print $decoded;
  }
}

main();
exit;
