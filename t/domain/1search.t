#!/usr/bin/perl -w

use strict;
use Test::More 0.88;
use t::Test qw(players courses);
use Golf::Domain::Search;

# Search presumes you have a scope set up
my $s = $D->new_scope;

my $u = Golf::Domain::Search->coerce_player('omega');

isa_ok($u, "Golf::Domain::Player");

is($u->id, "omega");

for my $name (qw/Frogner Ekeberg Muselunden/) {
    my $c = Golf::Domain::Search->coerce_course($name);

    isa_ok($c, "Golf::Domain::Course");
    is($c->name, $name);
    my @holes = $c->holes->members;
    map {
        isa_ok($_, "Golf::Domain::Hole");
    } @holes;
}
