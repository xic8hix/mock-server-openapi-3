package Test::Mock::Server;

use strict;
use warnings FATAL => 'all';

use Mojolicious::Lite;
use Test::Mock::API::Factory;
use Getopt::Long;
use Carp;


my $url;
my $API;

GetOptions('u|url=s' => \$url) or confess("Missing args");

any '/:path' => sub {
        my $c = shift;

        my $request = $c->req;
        my $api = API();
        my $response = $api->route($request);

        $c->render($response);
    };


app->start;

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