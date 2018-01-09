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

1;