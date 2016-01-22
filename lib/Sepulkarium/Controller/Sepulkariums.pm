package Sepulkarium::Controller::Sepulkariums;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

Sepulkarium::Controller::Sepulkaria - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :PathPart('sepulkariums') :Chained('/') :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched Sepulkarium::Controller::Sepulkariums in Sepulkariums.');
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
