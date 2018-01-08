package Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Byte;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Parameter::Property::String';

use strict;
use warnings FATAL => 'all';

use MIME::Base64;

has validate => sub {
        my ($self) = @_;

        my $result = 1;
        my $length = MIME::Base64::decoded_base64_length($self->value());

        $result = 0 if (defined($self->minLength()) && $length < $self->minLength());
        $result = 0 if (defined($self->maxLength()) && $length > $self->maxLength());

        return $result;
    };

1;

1;