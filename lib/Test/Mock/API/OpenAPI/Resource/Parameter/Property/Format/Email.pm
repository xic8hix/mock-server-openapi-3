package Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Email;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Parameter::Property::String';

use strict;
use warnings FATAL => 'all';

use Email::Valid;

has validate => sub {
        my ($self) = @_;

        my $result = $self->SUPER::validate();

        $result = Email::Valid->address($self->value()) if ($result);

        return $result;
    };

1;