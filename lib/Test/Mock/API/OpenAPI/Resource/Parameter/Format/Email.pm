package Test::Mock::API::OpenAPI::Resource::Parameter::Format::Email;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Parameter::String';

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