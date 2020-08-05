package Elegeia::Kernel;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $self = {};

    bless $self, $class;
    return $self;
}
