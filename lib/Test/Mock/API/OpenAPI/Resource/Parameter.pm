package Test::Mock::API::OpenAPI::Resource::Parameter;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Carp;

has name => undef;

has in => undef;

has required => undef;

has description => undef;

has deprecated => undef;

has allowEmptyValue => undef;

has schema => undef;

sub prepare {
    my ($class, $args) = @_;

    #@returns __PACKAGE__
    my $self = $class->new($args);

    $self->prepare_schema();

    return $self;
};

sub prepare_schema {
    my ($self) = @_;


};


1;