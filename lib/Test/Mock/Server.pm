package Test::Mock::Server;

use Mojo::Base 'Mojolicious';

use strict;
use warnings FATAL => 'all';

use Test::Mock::API::Factory;
use Mojolicious::Routes;
use Getopt::Long;
use Carp;


my $url;
my $API;

GetOptions('u|url=s' => \$url) or confess("Missing args");

sub startup {
    my $self = shift;

    my Mojolicious::Routes $routes = $self->routes;
    $routes->any('/:path' => sub {
            my Mojolicious::Controller $c = shift;

            my $request = $c->req;
            my $api = API();
            my $response = $api->route($request);

            $c->render($response);
        });
}

$app->start;

#@returns Test::Mock::API
sub API {
    return $API if (defined($API));

    confess("URL is undefined") unless ($url);

    my $factory = Test::Mock::API::Factory->new(url => $url);
    confess("Factory is undefined") unless (defined($factory));

    $API = $factory->create();
    confess("API is undefined") unless (defined($API));

    return $API;
};

1;