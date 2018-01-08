package Test::Mock::API::OpenAPI::Resource::Parameter::Property::Integer;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Parameter::Property';

use strict;
use warnings FATAL => 'all';

has minimum => -9223372036854775808;
has maximum =>  9223372036854775807;

1;