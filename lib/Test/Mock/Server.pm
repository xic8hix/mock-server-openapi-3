package Test::Mock::Server;

use strict;
use warnings FATAL => 'all';

use Test::Mock::API::Factory;
use Test::Mock::API;
use Mojolicious::Lite;
use Getopt::Long;
use Carp;


my $url;

GetOptions('u|url=s' => \$url) or confess("Missing args");

#any '/*path' => sub {
#        my Mojolicious::Controller $c = shift;
#
#        my $request = $c->req;
#        my $api = API();
#        my $response = $api->route($request);
#
#        $c->render($response);
#    };

confess("URL is undefined") unless ($url);

my $factory = Test::Mock::API::Factory->new({url => $url});
confess("Factory is undefined") unless (defined($factory));

my $API = $factory->create();
confess("API is undefined") unless (defined($API));
warn ref($API);
confess("API is not object") unless (ref($API));

#my $routes = $API->routes();
#
#for my $route (@{$routes}) {
#    no strict 'refs';
#    no warnings 'redefine';
#    $route->{method}($route->{url})->to(controller => $route->{controller}, action => $route->{action});
#}

app->start('daemon', '-l', 'http://localhost:8000');

#@returns Test::Mock::API
sub API {
    return $API if (defined($API));


    return $API;
};

1;