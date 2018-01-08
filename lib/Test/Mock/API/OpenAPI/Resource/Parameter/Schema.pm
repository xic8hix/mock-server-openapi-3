package Test::Mock::API::OpenAPI::Resource::Parameter::Schema;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

has parameters => sub { [] };

sub add_parameter {
    my ($self, $parameter) = @_;

    push(@{$self->parameters()}, $parameter);
};

1;