package Test::Mock::OpenAPI::Resource::Parameter::Format;
use strict;
use warnings FATAL => 'all';

has map => {
        'int32'     => \Test::Mock::OpenAPI::Resource::Parameter::Format::Int32,
        'int64'     => \Test::Mock::OpenAPI::Resource::Parameter::Format::Int64,
        'float'     => \Test::Mock::OpenAPI::Resource::Parameter::Format::Float,
        'double'    => \Test::Mock::OpenAPI::Resource::Parameter::Format::Double,
        'byte'      => \Test::Mock::OpenAPI::Resource::Parameter::Format::Byte,
        'binary'    => \Test::Mock::OpenAPI::Resource::Parameter::Format::Binary,
        'date'      => \Test::Mock::OpenAPI::Resource::Parameter::Format::Date,
        'date-time' => \Test::Mock::OpenAPI::Resource::Parameter::Format::DateTime,
        'password'  => \Test::Mock::OpenAPI::Resource::Parameter::Format::Password,
        'email'     => \Test::Mock::OpenAPI::Resource::Parameter::Format::Email,
        'uuid'      => \Test::Mock::OpenAPI::Resource::Parameter::Format::UUID,
    };

has

1;