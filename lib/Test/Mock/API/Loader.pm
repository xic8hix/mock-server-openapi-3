package Test::Mock::API::Loader;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Carp;
use File::Fetch;
use YAML::XS;

use Test::Mock::API::Document;
use Test::Mock::API::Document::Types;

$File::Fetch::BLACKLIST = [ 'lwp' ];

has url => undef;

has external_documents => sub { {} };

has type_parent_document => undef;

has version_parent_document => undef;

has is_child => undef;

has loader_map => sub { {} };

#@method
sub download {
    my ($self, $uri) = @_;

    $uri = $self->url() unless (defined($uri));

    my $content;
    my $loader = $self->loader($uri);

    $loader->fetch(to => \$content);

    return $content;
};

#@method
#@returns Test::Mock::API::Document
sub load {
    my ($self) = @_;

    my $content = $self->download();
    my $object = YAML::XS::Load($content);
    my $document;

    if ($self->is_child()) {
        $document = Test::Mock::API::Document->new(
            url => $self->url(),
            content => $object,
            is_child => $self->is_child(),
            type_document => $self->type_parent_document(),
            version_document => $self->version_parent_document()
        );
    }
    else {
        $document = Test::Mock::API::Document->new(content => $object);
    }

    croak("Unknown a document type") unless (defined($document->type()));
    croak(
        sprintf("Unsupported a document version - %s(%s)",
            $document->type() // 'undefined',
            $document->version() // 'undefined'
        )
    ) unless ($self->check_version($document->type(), $document->version()));

    for my $link (@{$document->external_documents()}) {
        $link = URI->new($link)->abs($self->url())
            unless ($link =~ m#^\w+://#);

        my $external_document;
        unless (exists($self->external_documents()->{$link})) {
            my $loader_external_document = Test::Mock::API::Loader->new(
                url                     => $link,
                is_child                => 1,
                type_parent_document    => $document->type(),
                version_parent_document => $document->version(),
                external_documents      => $self->external_documents()
            );
            $external_document = $loader_external_document->load();
            $self->external_documents()->{$link} = $external_document;
        }
        else {
            $external_document = $self->external_documents()->{$link};
        }

        $document->add_document($link, $external_document);
    }

    return $document;
};

#@method
#@returns File::Fetch
sub loader {
    my ($self, $uri) = @_;

    $uri = $self->url() unless($uri);

    my $loader_map = $self->loader_map();

    return $loader_map->{$uri} if (exists($loader_map->{$uri}));

    $loader_map->{$uri} = File::Fetch->new(uri => $uri);

    return $loader_map->{$uri};
};

sub check_version {
    my ($self, $type, $version) = @_;

    my $result = 0;

    if (exists(Test::Mock::API::Document::Types::TYPES_VERSIONS->{$type})) {
        for my $supported_version (@{+Test::Mock::API::Document::Types::TYPES_VERSIONS->{$type}}) {
            if ($version =~ /^$supported_version/) {
                $result = 1;
                last;
            }
        }
    }

    return $result;
}

1;
