package Test::Mock::API::OpenAPI::Resource::Parameter::Property::Number;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Parameter::Property';

use strict;
use warnings FATAL => 'all';

has minimum => -1.7976931348623157e+308;
has maximum =>  1.7976931348623157e+308;

has validate => sub {
        my ($self) = @_;

        my $result = 1;

        $result = 0 if ($self->value() < $self->minimum());
        $result = 0 if ($self->value() > $self->maximum());

        return $result;
    };

1;