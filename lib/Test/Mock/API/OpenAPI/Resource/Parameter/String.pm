package Test::Mock::API::OpenAPI::Resource::Parameter::String;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Parameter';

use strict;
use warnings FATAL => 'all';

has validate => sub {
        my ($self) = @_;

        my $result = 1;

        $result = 0 if (defined($self->minLength()) && length($self->value()) < $self->minLength());
        $result = 0 if (defined($self->maxLength()) && length($self->value()) > $self->maxLength());

        return $result;
    };

1;