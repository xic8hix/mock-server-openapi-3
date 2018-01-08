package Test::Mock::API::OpenAPI::Resource::Parameter::Factory;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Boolean;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Integer;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Number;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::String;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Int32;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Int64;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Float;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Double;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Date;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::DateTime;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Binary;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Byte;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Email;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Password;
use Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::UUID;


#@returns Test::Mock::API::OpenAPI::Resource::Parameter
sub instance {
    my ($self) = @_;

    if ($self->type()) {

    }
    else {

    }
}

1;