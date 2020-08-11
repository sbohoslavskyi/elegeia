package Elegeia::Http::ParameterSet;

use Mouse;

has 'params' => (
    is     => 'ro',
    isa    => 'HashRef[Str|Int]',
    reader => '_get_params',
    writer => '_set_params',
);

#==============================================
#** @method public get ($self, $name, $default)
# @brief Return parameter by name
# @param $name    scalar, Name of parameter
# @param $default scalar, Default value
#*
#----------------------------------------------
sub get {
    my ( $self, $name, $default ) = @_;
    
    if (exists $self->{params}{$name}) {
        return $self->{params}{$name};
    } elsif (defined $default) {
        return $default;
    } else {
        return undef;
    }
}

__PACKAGE__->meta()->make_immutable();

1;
