package Test::Mock::API::OpenAPI::Resource::Parameter;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

has 'name';
has 'required';
has 'in';
has 'type';
has 'description';
has 'deprecated';
has 'allowEmptyValue';

has 'format';
has 'min';

1;