package Test::Mock::API::Factory;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Carp;
use Test::Mock::API;
use Test::Mock::API::Detector;
use Test::Mock::API::Loader;

use constant API_TYPES => {
        "OpenAPI" => \'Test::Mock::API::OpenAPI'
    };


has url => undef;

has type => undef;

has content => undef;

#@returns Test::Mock::API
has create => sub {
        my $self = shift();

        croak "URL is undefined" unless ($self->url);

        my $content = $self->load();
        my $type = $self->type();

        my Test::Mock::API $API = Test::Mock::API::Factory::API_TYPES->$type;

        return $API->render($content);
    };

#@method
has loader => sub {
        my $self = shift();

        return Test::Mock::API::Loader->new($self->url);
    };

#@method
has detect => sub {
        my $self = shift();

    };

#@method
has preload => sub {
        my $self = shift();
    };

#@method
has load => sub {
        my $self = shift();

        my $loader = $self->loader();

        $self->main_content = '';
    };

1;