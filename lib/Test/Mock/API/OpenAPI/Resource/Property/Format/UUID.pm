package Test::Mock::API::OpenAPI::Resource::Property::Format::UUID;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Property::String';

use strict;
use warnings FATAL => 'all';

has pattern => '/[a-Z0-9]{8}\-[a-Z0-9]{4}\-[a-Z0-9]{4}\-[a-Z0-9]{4}\-[a-Z0-9]{12}/';

1;