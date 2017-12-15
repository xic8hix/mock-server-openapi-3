use 5.010001;
use strict;
use warnings FATAL => 'all';

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'Test::Mock::API::OpenAPI',
    VERSION_FROM      => 'lib/Test/Mock/OpenAPI.pm',
    PREREQ_PM         => {
        'Mojolicious'           => 7.58,
        'App::SerializeUtils'   => 0.15,
        'JSON::Validator'       => 1.07
    },
    ABSTRACT_FROM     => 'lib/Test/Mock/OpenAPI.pm',
    AUTHOR            => 'Lev ICHI Zaplatin <ichi.su.mobile@gmail.com>',
);
