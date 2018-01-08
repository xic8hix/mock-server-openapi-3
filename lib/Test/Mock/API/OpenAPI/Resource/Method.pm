package Test::Mock::API::OpenAPI::Resource::Method;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';
use Carp;

has content => sub { confess "not implemented"; };

has name => sub { confess "not implemented"; };

has content_types => sub { {} };

sub add_content_type {
    my ($self) = @_;

    $self->content_types()

};

1;