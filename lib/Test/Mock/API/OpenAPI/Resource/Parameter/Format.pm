package Test::Mock::API::OpenAPI::Resource::Parameter::Format;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';


has map => {
        'int32'     => \Test::Mock::API::OpenAPI::Resource::Parameter::Format::Int32,
        'int64'     => \Test::Mock::API::OpenAPI::Resource::Parameter::Format::Int64,
        'float'     => \Test::Mock::API::OpenAPI::Resource::Parameter::Format::Float,
        'double'    => \Test::Mock::API::OpenAPI::Resource::Parameter::Format::Double,
        'byte'      => \Test::Mock::API::OpenAPI::Resource::Parameter::Format::Byte,
        'binary'    => \Test::Mock::API::OpenAPI::Resource::Parameter::Format::Binary,
        'date'      => \Test::Mock::API::OpenAPI::Resource::Parameter::Format::Date,
        'date-time' => \Test::Mock::API::OpenAPI::Resource::Parameter::Format::DateTime,
        'password'  => \Test::Mock::API::OpenAPI::Resource::Parameter::Format::Password,
        'email'     => \Test::Mock::API::OpenAPI::Resource::Parameter::Format::Email,
        'uuid'      => \Test::Mock::API::OpenAPI::Resource::Parameter::Format::UUID,
    };

1;