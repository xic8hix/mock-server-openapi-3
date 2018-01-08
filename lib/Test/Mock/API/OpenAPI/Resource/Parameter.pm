package Test::Mock::API::OpenAPI::Resource::Parameter;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Carp;

has value => undef;

has name => undef;
has in => undef;
has required => undef;
has type => undef;
has format => undef;
has description => undef;
has deprecated => undef;
has allowEmptyValue => undef;
has default => undef;
has pattern => undef;

has validate => sub {confess "not implemented";};

# Integer && Float
# Test::Mock::API::OpenAPI::Resource::Parameter::Integer
# Test::Mock::API::OpenAPI::Resource::Parameter::Format::Int32
# Test::Mock::API::OpenAPI::Resource::Parameter::Format::Int64
# Test::Mock::API::OpenAPI::Resource::Parameter::Number
# Test::Mock::API::OpenAPI::Resource::Parameter::Format::Float
# Test::Mock::API::OpenAPI::Resource::Parameter::Format::Double
has minimum => undef;
has maximum => undef;

# Length. String
# Test::Mock::API::OpenAPI::Resource::Parameter::String
# Test::Mock::API::OpenAPI::Resource::Parameter::Format::Binary
# Test::Mock::API::OpenAPI::Resource::Parameter::Format::Byte
# Test::Mock::API::OpenAPI::Resource::Parameter::Format::Date
# Test::Mock::API::OpenAPI::Resource::Parameter::Format::DateTime
# Test::Mock::API::OpenAPI::Resource::Parameter::Format::Email
# Test::Mock::API::OpenAPI::Resource::Parameter::Format::Password
# Test::Mock::API::OpenAPI::Resource::Parameter::Format::UUID
has minLength => undef;
has maxLength => undef;

1;