package Test::Mock::API::OpenAPI::Resource::Property::Format::Date;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Property::String';

use strict;
use warnings FATAL => 'all';

use Carp;
use DateTime;

has minLength => 10;
has maxLength => 10;

has validate => sub {
        my ($self) = @_;

        my $result = $self->SUPER::validate();

        eval {
            my $string = $self->value();

            my ($year, $month, $day) = $string =~ s/^(\d{4})-(\d{2})-(\d{2})// && (0 + $1, 0 + $2, 0 + $3)
                or croak("Incorrectly formatted date");

            DateTime->new(
                year  => $year,
                month => $month,
                day   => $day
            );
        };

        $result = 0 if ($@);

        return $result;
    };

1;