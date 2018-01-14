package Test::Mock::API::OpenAPI::Resource::Parameter::Property;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Carp;


has title => undef;
has multipleOf => undef;
has exclusiveMaximum => undef;
has exclusiveMinimum => undef;
has maxItems => undef;
has minItems => undef;
has uniqueItems => undef;
has maxProperties => undef;
has minProperties => undef;
has required => undef;
has enum => undef;

######

has allOf => undef;
has oneOf => undef;
has anyOf => undef;
has not => undef;
has items => undef;
has properties => undef;
has additionalProperties => undef;
has description => undef;

######

has nullable => undef;
has discriminator => undef;
has readOnly => undef;
has writeOnly => undef;
has xml => undef;
has externalDocs => undef;
has example => undef;
has deprecated => undef;

######

has value => undef;
has format => undef;
has type => undef;

has default => undef;
has pattern => undef;

has validate => sub {confess "not implemented";};
has generate => sub {confess "not implemented";};

# Integer && Float
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Integer
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Int32
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Int64
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Number
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Float
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Double
has minimum => undef;
has maximum => undef;

# Length. String
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::String
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Binary
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Byte
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Date
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::DateTime
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Email
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Password
# Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::UUID
has minLength => undef;
has maxLength => undef;

1;