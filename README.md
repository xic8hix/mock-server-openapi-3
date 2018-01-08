# Test::Mock::Server

## Using

### CLI

> perl -I lib/ bin/mock-server -u https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v2.0/yaml/petstore-separate/spec/swagger.yaml

#### Version

* alpha - development/testing

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
* Test::Mock::API::OpenAPI::Resource::Parameter
* Test::Mock::API::OpenAPI::Resource::Parameter::Schema
* Test::Mock::API::OpenAPI::Resource::Parameter::Factory
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Boolean
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Integer
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Number
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::String
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Factory
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Int32
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Int64
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Double
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Float
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Byte
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Binary
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Date
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::DateTime
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::UUID
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Email
* Test::Mock::API::OpenAPI::Resource::Parameter::Property::Format::Password

## Dependencies

* [Mojolicious](https://metacpan.org/pod/Mojolicious)
* [YAML::XS](https://metacpan.org/pod/distribution/YAML-LibYAML/lib/YAML/XS.pod)
* [URI](https://metacpan.org/pod/URI)

## License

![License](https://licensebuttons.net/l/by/4.0/88x31.png "CC-BY v4.0")

[CC-BY v4.0](https://creativecommons.org/licenses/by/4.0/)
