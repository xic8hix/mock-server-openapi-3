package Test::Mock::API::OpenAPI::Resource::Parameter::Format::DateTime;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Parameter::String';

use strict;
use warnings FATAL => 'all';

use DateTime::Format::RFC3339;

has minLength => 20;

has validate => sub {
        my ($self) = @_;

        my $result = $self->SUPER::validate();

        eval {
            my $validator = DateTime::Format::RFC3339->new();
            $validator->parse_datetime($self->value());
        };

        $result = 0 if ($@);

        return $result;
    };

1;