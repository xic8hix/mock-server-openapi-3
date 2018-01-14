#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 17;

BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Boolean') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Integer') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Number') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::String') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format::Int32') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format::Int64') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format::Float') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format::Double') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format::Binary') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format::Byte') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format::Date') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format::DateTime') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format::Email') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format::Password') };
BEGIN { use_ok('Test::Mock::API::OpenAPI::Resource::Property::Format::UUID') };

done_testing();

