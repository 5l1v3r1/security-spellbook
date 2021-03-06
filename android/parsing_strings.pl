#!/usr/bin/env perl

use 5.018;
use strict;
use warnings;
use XML::Simple;
use Data::Dumper;

sub main {
    my $file = $ARGV[0];

    if ($file) {
        my $data = XMLin($file);

        if (Dumper($data) =~ m/:\/\//) {
            say "true";
            # say $_;
        }
    }
}

main();
exit;