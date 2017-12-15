package Test::Mock::API::OpenAPI::Resource::Method;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';


has 'method';
has 'parameters';
has 'responses';

has add_response => sub {

    };

has add_parameter => sub {

    };

has validate => sub {

    };

1;