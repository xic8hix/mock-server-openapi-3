package Test::Mock::API::OpenAPI::Resource;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Test::Mock::API::OpenAPI::Resource::Method;

has path => undef;

has methods => sub { {} };

sub add_method  {
    my ($self, $name, $method) = @_;

    #@type Test::Mock::API::OpenAPI::Resource::Method
    $self->methods()->{$name} = $method
};


1;