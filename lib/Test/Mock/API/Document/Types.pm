package Test::Mock::API::Document::Types;

use strict;
use warnings FATAL => 'all';

use constant OpenAPI => 'Test::Mock::API::OpenAPI';
use constant Swagger => 'Test::Mock::API::Swagger';

# TODO доработать константы

use constant TAGS_WITH_NAMES => {
    openapi => 'OpenAPI',
    swagger => 'Swagger'
};

use constant TYPES => {
        OpenAPI => OpenAPI,
        Swagger => Swagger
    };

use constant TYPES_VERSIONS => {
    OpenAPI => ['3.0'],
    Swagger => []
};

1;
