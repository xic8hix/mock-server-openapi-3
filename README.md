# Test::Mock::Server

## Using

### CLI

> perl -Ilib/ bin/mock-server -u https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v2.0/yaml/petstore-separate/spec/swagger.yaml

#### Options

> -f|--file <local_file> - Loading from local file

> -u|--url <local_file> - Download file and loading

#### Supported types

* YAML
* JSON

#### Supported versions of specifications

* OpenAPI 
  * 3.0.0
  * 3.0.1
* Swagger
  * 2.0

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
* Test::Mock::API::OpenAPI::Resource::Response
* Test::Mock::API::OpenAPI::Resource::Method
* Test::Mock::API::OpenAPI::Resource::Parameter
* Test::Mock::API::OpenAPI::Resource::Parameter::
* Test::Mock::API::OpenAPI::Resource::Parameter::Boolean
* Test::Mock::API::OpenAPI::Resource::Parameter::Integer
* Test::Mock::API::OpenAPI::Resource::Parameter::Number
* Test::Mock::API::OpenAPI::Resource::Parameter::String
* Test::Mock::API::OpenAPI::Resource::Parameter::Format
* Test::Mock::API::OpenAPI::Resource::Parameter::Format::Int32
* Test::Mock::API::OpenAPI::Resource::Parameter::Format::Int64
* Test::Mock::API::OpenAPI::Resource::Parameter::Format::Double
* Test::Mock::API::OpenAPI::Resource::Parameter::Format::Float
* Test::Mock::API::OpenAPI::Resource::Parameter::Format::Byte
* Test::Mock::API::OpenAPI::Resource::Parameter::Format::Binary
* Test::Mock::API::OpenAPI::Resource::Parameter::Format::Date
* Test::Mock::API::OpenAPI::Resource::Parameter::Format::DateTime
* Test::Mock::API::OpenAPI::Resource::Parameter::Format::UUID
* Test::Mock::API::OpenAPI::Resource::Parameter::Format::Email
* Test::Mock::API::OpenAPI::Resource::Parameter::Format::Password

## Dependencies

* Mojolicious
* App::SerializeUtils
* JSON::Validator
* URI::file
* File::Fetch
