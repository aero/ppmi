#!/usr/bin/env perl
use 5.010;
use strict;
use warnings;
# Insert the below line to load modules.
use lib 'perl_modules/lib';
use Mojo::UserAgent;

my $ua = Mojo::UserAgent->new;
say $ua->get('www.perl.org')->result->dom->at('title')->text;
