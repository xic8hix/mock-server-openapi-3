package Test::Mock::API;

use Mojo::Base -base;

use 5.014;
use strict;
use warnings FATAL => 'all';

use Carp;

our $VERSION = '0.01';


=head1 Interface Test::Mock::API

=head2 Method Render

This method will download all resources or read from disk and prepare to work.
The method must return object implementation of this interface.

=cut

#@abstract
#@method
has render => sub { confess "not implemented"; };

=head2 Method Validate

This method validation full schema.

=cut

#@abstract
#@method
has validate => sub { confess "not implemented"; };

=head2 Method Version

This method return version of schema API

=cut

#@abstract
#@method
has version => sub { confess "not implemented"; };

=head2 Method Type

This method return type of schema API

=cut

#@abstract
#@method
has type => sub { confess "not implemented"; };

=head2 Method URL

This method will return URL of a schema.

=cut

#@abstract
#@method
has url => sub { confess "not implemented"; };

=head2 Method Routes

This method will return an array of routes after render.

=cut

#@abstract
#@method
has routes => sub { confess "not implemented"; };

=head2 Method Route

This method will return a response to the request.

=head3 Params

Method  - string (enum) - method of HTTP request
Path    - string - url of HTTP request
Headers - hash - all header of HTTP request
Params  - hash - GET and POST params of HTTP request

=cut

#@abstract
#@method
has route => sub { confess "not implemented"; };

1;