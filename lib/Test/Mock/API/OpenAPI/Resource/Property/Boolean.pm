package Test::Mock::API::OpenAPI::Resource::Property::Boolean;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Property';

use strict;
use warnings FATAL => 'all';

use JSON::PP;

has generate => sub {
        return rand(1) ? JSON::PP::true : JSON::PP::false;
    };

1;