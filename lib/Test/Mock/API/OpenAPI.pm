package Test::Mock::API::OpenAPI;

use Mojo::Base 'Test::Mock::API';

use strict;
use warnings;

use Test::Mock::API::Document;
use Test::Mock::API::OpenAPI::Resource;
use Test::Mock::API::OpenAPI::Resource::Method;
use Test::Mock::API::OpenAPI::Resource::Parameter;
use Test::Mock::API::OpenAPI::Resource::Response;


#@override
has version => sub {
        my ($self) = @_;

        return $self->document()->version();
    };

#@override
has type => sub {
        my ($self) = @_;

        return $self->document()->type();
    };


has resources => sub { {} };

#@returns Test::Mock::API::Document
has document => undef;

sub render {
    my ($self) = @_;

    my $document = $self->document()->content();

    for my $path (keys %{$document->{paths}}) {

        my $resource = Test::Mock::API::OpenAPI::Resource->new(path => $path);
        $self->resources()->{path} = $resource;

        for my $method_name (keys %{$document->{paths}->{$path}}) {

            my $method = Test::Mock::API::OpenAPI::Resource::Method::Factory->new(method => uc($method_name))->instance();
            $resource->add_method($method_name, $method);

            # Find parameters
            for my $parameter_object (keys @{$document->{paths}->{$path}->{$method_name}->{parameters}}) {
                my $parameter = Test::Mock::API::OpenAPI::Resource::Parameter->prepare($parameter_object);
            }

            # Find responses
            for my $response_code (keys %{$document->{paths}->{$path}->{$method_name}->{responses}}) {


            }
        }
    }
};

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Test::Mock::API::OpenAPI - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Test::Mock::API::OpenAPI;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for Test::Mock::API::OpenAPI, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

ICHI, E<lt>ichi@(none)E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2017 by ICHI

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.24.0 or,
at your option, any later version of Perl 5 you may have available.


=cut
