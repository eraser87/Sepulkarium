package Sepulkarium::Controller::CRUD;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

Sepulkarium::Controller::CRUD - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;
    $c->stash(template => 'crud.tt2');
    $c->response->body('Matched Sepulkarium::Controller::CRUD in CRUD.');
}



=encoding utf8

=head1 AUTHOR

eraser,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
