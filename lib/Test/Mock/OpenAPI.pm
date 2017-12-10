package Test::Mock::OpenAPI;

use Mojo::Base -base;

use 5.010001;
use strict;
use warnings;

use Test::Mock::OpenAPI::Resource;
use Test::Mock::OpenAPI::Resource::Method;
use Test::Mock::OpenAPI::Resource::Parameter;
use Test::Mock::OpenAPI::Resource::Response;

our $VERSION = '0.01';

has 'resources';

has add_resource => sub {

    };

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Test::Mock::OpenAPI - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Test::Mock::OpenAPI;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for Test::Mock::OpenAPI, created by h2xs. It looks like the
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
