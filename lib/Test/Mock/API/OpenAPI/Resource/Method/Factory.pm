package Test::Mock::API::OpenAPI::Resource::Method::Factory;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Scalar::Util;

use Test::Mock::API::OpenAPI::Resource::Method::OPTIONS;
use Test::Mock::API::OpenAPI::Resource::Method::HEAD;
use Test::Mock::API::OpenAPI::Resource::Method::GET;
use Test::Mock::API::OpenAPI::Resource::Method::POST;
use Test::Mock::API::OpenAPI::Resource::Method::PATCH;
use Test::Mock::API::OpenAPI::Resource::Method::PUT;
use Test::Mock::API::OpenAPI::Resource::Method::DELETE;
use Test::Mock::API::OpenAPI::Resource::Method::TRACE;


has method => undef;

#@returns Test::Mock::API::OpenAPI::Resource::Method
sub instance {
    my ($self) = @_;

    $self = $self->new(@_) unless (Scalar::Util::blessed($self));

    my $instance;
    my $method = $self->method();

    $instance = Test::Mock::API::OpenAPI::Resource::Method::OPTIONS->new()
        if ($method eq 'OPTIONS');

    $instance = Test::Mock::API::OpenAPI::Resource::Method::HEAD->new()
        if ($method eq 'HEAD');

    $instance = Test::Mock::API::OpenAPI::Resource::Method::GET->new()
        if ($method eq 'GET');

    $instance = Test::Mock::API::OpenAPI::Resource::Method::POST->new()
        if ($method eq 'POST');

    $instance = Test::Mock::API::OpenAPI::Resource::Method::PATCH->new()
        if ($method eq 'PATCH');

    $instance = Test::Mock::API::OpenAPI::Resource::Method::PUT->new()
        if ($method eq 'PUT');

    $instance = Test::Mock::API::OpenAPI::Resource::Method::DELETE->new()
        if ($method eq 'DELETE');

    $instance = Test::Mock::API::OpenAPI::Resource::Method::TRACE->new()
        if ($method eq 'TRACE');

    return $instance;
}


1;