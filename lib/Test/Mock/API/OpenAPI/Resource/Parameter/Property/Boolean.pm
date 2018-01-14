package Test::Mock::API::OpenAPI::Resource::Parameter::Property::Boolean;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Parameter::Property';

use strict;
use warnings FATAL => 'all';

use JSON::PP;

has generate => sub {
        my ($self) = @_;

        my $rand = rand(1);

        return $rand ? JSON::PP::true : JSON::PP::false;
    };

1;