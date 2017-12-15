package Test::Mock::API;

use Mojo::Base -base;

use strict;
use warnings FATAL => 'all';

use Carp;

=head1 Interface Test::Mock::API

=head2 Method Render

This method will download all resources or read from disk and prepare to work.
The method must return object implementation of this interface.

=cut
has render => sub { confess "not implemented"; };

=head2 Method Validate

This method validation full schema.

=cut
has validate => sub { confess "not implemented"; };

=head2 Method Version

This method return version of schema API

=cut
has version => sub { confess "not implemented"; };

=head2 Method URL

This method will return URL of a schema.

=cut
has url => sub { confess "not implemented"; };

=head2 Method Routes

This method will return an array of routes after render.

=cut
has routes => sub { confess "not implemented"; };

=head2 Method Route

This method will return a response to the request.

=head3 Params

Method  - string (enum) - method of HTTP request
Path    - string - url of HTTP request
Headers - hash - all header of HTTP request
Params  - hash - GET and POST params of HTTP request

=cut
has route => sub { confess "not implemented"; };

1;