package Test::Mock::API::OpenAPI::Resource::Property::String;

use Mojo::Base 'Test::Mock::API::OpenAPI::Resource::Property';

use strict;
use warnings FATAL => 'all';
use String::Random;

has validate => sub {
        my ($self) = @_;

        my $result = 1;

        $result = 0 if (defined($self->minLength()) && length($self->value()) < $self->minLength());
        $result = 0 if (defined($self->maxLength()) && length($self->value()) > $self->maxLength());

        return $result;
    };

has generate => sub {
        my ($self) = @_;

        my $minLength = $self->minLength() // 0;
        my $maxLength = $self->maxLength() // 1024;

        my $random = rand($maxLength-$minLength) + $minLength;
        my $pattern = '.' x $random;
        my $string = String::Random->new();

        return $string->randpattern($pattern);
    };

1;