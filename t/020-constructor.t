#!/usr/bin/env perl6

use v6.c;

use Test;
use Databulous;

my @header = <One Two Three>;

my @data = ["One", 2, 3];

my $obj;

lives-ok { $obj = Databulous.new(:@header, :@data) }, "constructor";


done-testing;
# vim: expandtab shiftwidth=4 ft=perl6
