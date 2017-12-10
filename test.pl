use strict;
use warnings FATAL => 'all';

use Mojolicious::Lite -signatures;

get '/:foo' => sub ($c) {
  my $foo = $c->param('foo');
  $c->render(text => "Hello from $foo.");
};

app->start;
