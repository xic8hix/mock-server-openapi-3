package Test::Mock::API::OpenAPI::Resource::Property::Integer;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Property';

use strict;
use warnings FATAL => 'all';

has minimum => -9223372036854775808;
has maximum =>  9223372036854775807;

has generate => sub {
        my ($self) = @_;

        my $min = $self->minimum();
        my $max = $self->maximum();

        my $random = rand($max - $min) + $min;

        return $random;
    };

1;