package Test::Mock::API::OpenAPI::Resource::Method;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';
use Carp;


has name => sub { confess "not implemented"; };

1;