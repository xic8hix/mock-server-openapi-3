package Test::Mock::API::OpenAPI::Resource::Property::Format::Double;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Property::Number';

use strict;
use warnings FATAL => 'all';

has minimum => -1.7976931348623157e+308;
has maximum =>  1.7976931348623157e+308;

1;