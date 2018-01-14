package Test::Mock::API::OpenAPI::Resource::Parameter::Property::Number;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Parameter::Property';

use strict;
use warnings FATAL => 'all';


has minimum => -1.7976931348623157e+308;
has maximum =>  1.7976931348623157e+308;

has validate => sub {
        my ($self) = @_;

        my $result = 1;

        $result = 0 if ($self->value() < $self->minimum());
        $result = 0 if ($self->value() > $self->maximum());

        return $result;
    };

has generate => sub {
        my ($self) = @_;

        my $min = $self->minimum();
        my $max = $self->maximum();
        my $random_fractional_symbols = 6;

        my ($min_integer, $min_fractional) = split(/\./, $min);
        my ($max_integer, $max_fractional) = split(/\./, $max);

        my $len_min_fractional = length($min_fractional);
        my $len_max_fractional = length($max_fractional);

        my $min_fractional_template = sprintf("%%0%sd", $len_min_fractional);
        my $max_fractional_template = sprintf("%%0%sd", $len_max_fractional);
        my $random_fractional_template = sprintf("%%0%sd", $random_fractional_symbols);

        my $random_fractional;
        my $random_integer = rand($max_integer - $min_integer) + $min_integer;

        if ($random_integer == $max_integer) {
            $random_fractional = sprintf($max_fractional_template, rand(int($max_fractional)));
        }
        elsif ($random_integer == $min_integer) {
            my $min_max_fractional = 10 ** $len_min_fractional;
            $random_fractional = sprintf($max_fractional_template, rand($min_max_fractional));
            $random_fractional = int($min_fractional) if ($random_fractional < int($min_fractional));
        }
        else {
            my $max_random_fractional = 10 ** 6;
            $random_fractional = sprintf($max_fractional_template, rand($max_random_fractional));
        }

        my $random = sprintf("%s.%s", $random_integer, $random_fractional);

        return $random;
    };

1;