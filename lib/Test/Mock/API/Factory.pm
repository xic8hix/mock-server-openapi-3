package Test::Mock::API::Factory;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Carp;
use Test::Mock::API;
use Test::Mock::API::Detector;

use constant API_TYPES => {
        "OpenAPI" => \Test::Mock::API::OpenAPI
    };


has url => undef;

has type => undef;

has detect_version => sub {
        my $self = shift();


    };

has create => sub {
        my $self = shift();

        croak "TYPE is undefined" unless ($self->type);
        croak "URL is undefined" unless ($self->url);

        my $content = $self->load;

        my Test::Mock::API $API = API_TYPES->{$self->type()};

        return $API->render($self->url);
    };

has load => sub {
        my $self = shift();


    };
1;