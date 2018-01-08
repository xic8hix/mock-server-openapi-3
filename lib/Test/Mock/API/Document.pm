package Test::Mock::API::Document;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Carp;
use Test::Mock::API::Document::Types;

has url => undef;

has version => sub {
        my ($self) = @_;

        return $self->version_document() if (defined($self->version_document()));

        $self->type_document();

        return $self->version_document();
    };

has type => sub {
        my ($self) = @_;

        return $self->type_document() if (defined($self->type_document()));

        my $type;
        for my $tag (keys %{+ Test::Mock::API::Document::Types::TAGS_WITH_NAMES}) {
            $type = $tag if (exists($self->content()->{$tag}));
        }

        if (defined($type)) {
            $self->type_document(Test::Mock::API::Document::Types::TAGS_WITH_NAMES->{$type});
            $self->version_document($self->content()->{$type});
        }

        return $self->type_document();
    };

has version_document => undef;

has type_document => undef;

has is_child => undef;

has content => undef;

has documents => sub {{}};

has links_of_external_documents => sub {{}};


#@method
sub add_document {
    my ( $self, $url, $document ) = @_;

    confess("Document is undefined!") unless (defined($document));

    $self->documents()->{$url} = $document;
};

sub external_documents {
    my ($self) = @_;

    my $content = $self->content();
    confess("Document isn't HASH") unless (ref($content));

    $self->find_external_documents($content, '_root_', 0);

    return [ keys %{$self->links_of_external_documents()} ];
};

sub find_external_documents {
    my ($self, $node, $node_key, $i) = @_;

    if (ref($node) eq 'HASH') {
        for my $key (keys %{$node}) {
            $self->find_external_documents($node->{$key}, $key, $i++);
        }
    }
    if (ref($node) eq 'ARRAY') {
        for my $key (@{$node}) {
            $self->find_external_documents($key, $node_key, $i++);
        }
    }
    if (ref(\$node) eq 'SCALAR') {
        if ($node_key eq '$ref') {
            $node =~ /([^#]*)#?/;
            $self->links_of_external_documents()->{$1}++ if ($1);
        }
    }
};

1;
