# Test::Mock::Server

[![Build Status](https://travis-ci.org/xic8hix/mock-server-rest-api.svg?branch=master)](https://travis-ci.org/xic8hix/mock-server-rest-api)
[![codecov](https://codecov.io/gh/xic8hix/mock-server-rest-api/branch/master/graph/badge.svg)](https://codecov.io/gh/xic8hix/mock-server-rest-api)

## Notice

![Warning](https://github.com/iconic/open-iconic/raw/master/png/warning-4x.png "Warning") **This version is unstable, please not using now** ![Warning](https://github.com/iconic/open-iconic/raw/master/png/warning-4x.png "Warning")

## Using

### CLI

> perl -I lib/ bin/mock-server -u https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v2.0/yaml/petstore-separate/spec/swagger.yaml

#### Version

* **pre-alpha** - development/testing

#### Options

> -f|--file <local_file> - Loading from a local file

> -u|--url <uri> - Download a file and loading

#### Supported types

* YAML
* JSON

#### Supported versions of specifications

* OpenAPI 
  * 3.0.0
  * 3.0.1
* ~~Swagger~~
  * ~~2.0~~

## Constitutions

### Binary

* mock-server

### Main

* Test::Mock::Server
* Test::Mock::API
* Test::Mock::API::Factory
* Test::Mock::API::Detector
* Test::Mock::API::Loader
* Test::Mock::API::Document
* Test::Mock::API::Document::Types

### OpenAPI

* Test::Mock::API::OpenAPI
* Test::Mock::API::OpenAPI::Resource
* Test::Mock::API::OpenAPI::Resource::Parameter
* Test::Mock::API::OpenAPI::Resource::Response
* Test::Mock::API::OpenAPI::Resource::Method
* Test::Mock::API::OpenAPI::Resource::Method::Factory
* Test::Mock::API::OpenAPI::Resource::Method::OPTIONS
* Test::Mock::API::OpenAPI::Resource::Method::HEAD
* Test::Mock::API::OpenAPI::Resource::Method::GET
* Test::Mock::API::OpenAPI::Resource::Method::POST
* Test::Mock::API::OpenAPI::Resource::Method::PATCH
* Test::Mock::API::OpenAPI::Resource::Method::PUT
* Test::Mock::API::OpenAPI::Resource::Method::DELETE
* Test::Mock::API::OpenAPI::Resource::Method::TRACE
* Test::Mock::API::OpenAPI::Resource::Schema
* Test::Mock::API::OpenAPI::Resource::Schema::Object
* Test::Mock::API::OpenAPI::Resource::Schema::Array
* Test::Mock::API::OpenAPI::Resource::Schema::Value
* Test::Mock::API::OpenAPI::Resource::Property
* Test::Mock::API::OpenAPI::Resource::Property::Boolean
* Test::Mock::API::OpenAPI::Resource::Property::Integer
* Test::Mock::API::OpenAPI::Resource::Property::Number
* Test::Mock::API::OpenAPI::Resource::Property::String
* Test::Mock::API::OpenAPI::Resource::Property::Format
* Test::Mock::API::OpenAPI::Resource::Property::Format::Factory
* Test::Mock::API::OpenAPI::Resource::Property::Format::Int32
* Test::Mock::API::OpenAPI::Resource::Property::Format::Int64
* Test::Mock::API::OpenAPI::Resource::Property::Format::Double
* Test::Mock::API::OpenAPI::Resource::Property::Format::Float
* Test::Mock::API::OpenAPI::Resource::Property::Format::Byte
* Test::Mock::API::OpenAPI::Resource::Property::Format::Binary
* Test::Mock::API::OpenAPI::Resource::Property::Format::Date
* Test::Mock::API::OpenAPI::Resource::Property::Format::DateTime
* Test::Mock::API::OpenAPI::Resource::Property::Format::UUID
* Test::Mock::API::OpenAPI::Resource::Property::Format::Email
* Test::Mock::API::OpenAPI::Resource::Property::Format::Password

## Dependencies

* [Mojolicious](https://metacpan.org/pod/Mojolicious)
* [YAML::XS](https://metacpan.org/pod/distribution/YAML-LibYAML/lib/YAML/XS.pod)
* [URI](https://metacpan.org/pod/URI)
* [String::Random](https://metacpan.org/pod/String::Random)
* [Email::Valid](https://metacpan.org/pod/Email::Valid)
* [DateTime](https://metacpan.org/pod/DateTime)
* [DateTime::Format::RFC3339](https://metacpan.org/pod/DateTime::Format::RFC3339)
* [JSON::PP](https://metacpan.org/pod/JSON::PP)

## License

![License](https://licensebuttons.net/l/by/4.0/88x31.png "CC-BY v4.0")

[CC-BY v4.0](https://creativecommons.org/licenses/by/4.0/)
