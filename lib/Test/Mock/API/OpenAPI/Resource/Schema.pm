package Test::Mock::API::OpenAPI::Resource::Schema;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

has property => sub { [] };

sub add_parameter {
    my ($self, $parameter) = @_;

    push(@{$self->property()}, $parameter);
};

1;