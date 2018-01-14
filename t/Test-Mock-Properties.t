#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 17;

BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Boolean') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Integer') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Number') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::String') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Int32') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Int64') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Float') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Double') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Binary') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Byte') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Date') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::DateTime') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Email') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Password') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::UUID') };

done_testing();

