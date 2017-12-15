package Test::Mock::API::OpenAPI::Resource;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';


has 'path';
has 'methods';

has add_method => sub {
        my $self = shift();
        my $method = shift();

        push(@{$self->{methods}}, $method);
    };


1;