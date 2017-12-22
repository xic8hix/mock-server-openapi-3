package Test::Mock::API::Factory;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Carp;
use Test::Mock::API;
use Test::Mock::API::Detector;
use Test::Mock::API::Loader;

use constant API_TYPES => {
        "OpenAPI" => 'Test::Mock::API::OpenAPI'
    };


has url => '';

has type => undef;

has content => undef;

#@returns Test::Mock::API
has create => sub {  
        my $self = shift();

        warn sprintf("URL: %s", $self->url);
        croak "URL is undefined" unless ($self->url);

        my $content = $self->load();
        warn sprintf("CONTENT: %s", $self->content);
        croak "CONTENT is not set" unless ($content);

        #my $type = $self->type();
        #print sprintf("TYPE: %s", $self->type);
        #croak "TYPE is not set" unless ($type);
        #croak "TYPE is not supported" unless (exists(API_TYPES->{$type}));

        #my Test::Mock::API $API = API_TYPES->$type;

        #return $API->render($content);
    };

#@method
has loader => sub {
        my $self = shift();

        return Test::Mock::API::Loader->new(url => $self->url);
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

        $self->content('');
        #my $loader = $self->loader();

        #$self->main_content = '';
    };

1;