package Test::Mock::API::OpenAPI::Resource::Parameter::Factory;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Test::Mock::API::OpenAPI::Resource::Parameter::Boolean;
use Test::Mock::API::OpenAPI::Resource::Parameter::Integer;
use Test::Mock::API::OpenAPI::Resource::Parameter::Number;
use Test::Mock::API::OpenAPI::Resource::Parameter::Format;

#@returns Test::Mock::API::OpenAPI::Resource::Parameter
sub instance {
    my ($self) = @_;
}

1;