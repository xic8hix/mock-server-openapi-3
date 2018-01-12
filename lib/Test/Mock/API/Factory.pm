package Test::Mock::API::Factory;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Carp;
use Scalar::Util qw/blessed/;

use Test::Mock::API;
use Test::Mock::API::Loader;
use Test::Mock::API::Document;
use Test::Mock::API::Document::Types;


has url => undef;

has loader_object => undef;


#@returns Test::Mock::API
has create => sub {
        my ($self) = @_;

        croak("URL is undefined") unless ($self->url());

        my $document = $self->load();

        confess("Document is not object") unless(blessed($document) eq 'Test::Mock::API::Document');

        #@type Test::Mock::API
        my $api_package = Test::Mock::API::Document::Types::TYPES->{$document->type()};

        my $path_api_package = sprintf("%s.pm", $api_package);
        $path_api_package =~ s{::}{/}g;
        eval { require $path_api_package; };

        my $api = $api_package->new(document => $document);

        $api->render();

        return $api;
    };

#@method
#@returns Test::Mock::API::Loader
has loader => sub {
        my ($self) = @_;

        return $self->loader_object() if (defined($self->loader_object()));

        $self->loader_object(Test::Mock::API::Loader->new(url => $self->url()));

        return $self->loader_object();
    };

#@method
#@returns Test::Mock::API::Document
has load => sub {
        my ($self) = @_;

        my $document = $self->loader->load();

        confess('Can\'t get document!') unless(defined($document));

        return $document;
    };

1;