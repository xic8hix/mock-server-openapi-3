package Test::Mock::API::OpenAPI::Resource::Parameter;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Carp;


has validate => sub { confess "not implemented"; };

has name => sub { confess "not implemented"; };


has required => sub { confess "not implemented"; };
has in => sub { confess "not implemented"; };
has type => sub { confess "not implemented"; };
has description => sub { confess "not implemented"; };
has deprecated => sub { confess "not implemented"; };
has allowEmptyValue => sub { confess "not implemented"; };

has format => sub { confess "not implemented"; };
has min => sub { confess "not implemented"; };

1;