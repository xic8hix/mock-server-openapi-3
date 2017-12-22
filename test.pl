package Cat;
use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

has name => 'Nyan';
has ['age', 'weight'] => 4;

package Tiger;
use Mojo::Base 'Cat';

has friend  => sub { Cat->new };
has stripes => 42;

package main;
use Mojo::Base -strict;

my $mew = Cat->new(name => 'Longcat');
say $mew->age;
say $mew->age(3)->weight(5)->age;

my $rawr = Tiger->new(stripes => 38, weight => 250);
say $rawr->tap(sub { $_->friend->name('Tacgnol') })->weight;