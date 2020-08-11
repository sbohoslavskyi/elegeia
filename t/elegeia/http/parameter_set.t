#!/usr/bin/perl
use strict;
use warnings;

use Test::More;

use Elegeia::Http::ParameterSet;

my $params = {
    first_name => 'John',
    last_name  => 'Doe',
    age        => 23,
};

my $parameter_set = Elegeia::Http::ParameterSet->new(
    params => $params
);

is($parameter_set->get('first_name'), 'John');
is($parameter_set->get('age'), 23);
is($parameter_set->get('some_key'), undef);
is($parameter_set->get('some_key', 'Default value'), 'Default value');

done_testing();
