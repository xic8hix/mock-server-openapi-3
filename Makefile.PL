use 5.014;
use strict;
use warnings FATAL => 'all';

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Test::Mock::API',
    VERSION_FROM  => 'lib/Test/Mock/API.pm',
    PREREQ_PM     => {
        'Mojolicious'               => 7.58,
        'YAML::XS'                  => 0.69,
        'URI'                       => 1.07,
        'String::Random'            => 0.20,
        'Email::Valid'              => 1.202,
        'DateTime'                  => 1.45,
        'DateTime::Format::RFC3339' => 1.2,
        'JSON::PP'                  => 2.97001,
    },
    ABSTRACT_FROM => 'lib/Test/Mock/API.pm',
    AUTHOR        => 'Lev ICHI Zaplatin <ichi.su.mobile@gmail.com>',
);
