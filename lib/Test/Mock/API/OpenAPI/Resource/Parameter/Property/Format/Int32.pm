package Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Int32;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Parameter::Property::Integer';

use strict;
use warnings FATAL => 'all';

has minimum => -2147483648;
has maximum =>  2147483647;

1;