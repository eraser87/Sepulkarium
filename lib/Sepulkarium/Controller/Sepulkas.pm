package Sepulkarium::Controller::Sepulkas;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

Sepulkarium::Controller::Sepulkas - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

Выводим список сепулек.

=cut

sub index :PathPart('sepulkas') :Chained('/') :Args(0) {
    my ( $self, $c ) = @_;
    
    $c->stash(sepulkas => [$c->model('DB::Sepulka')->all]);

    $c->stash(template => 'sepulkas/list.tt2');
}



=encoding utf8

=head1 AUTHOR

Vladimir V. Predekha

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
