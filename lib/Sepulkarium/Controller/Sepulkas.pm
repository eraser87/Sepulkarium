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


=head2 list

Выводим список сепулек.

=cut

sub list :Chained('/') :PathPart('sepulkas') :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash(sepulkas => [$c->model('DB::Sepulka')->all]);

    $c->stash(template => 'sepulkas/list.tt2');
}

=head2 add

Выводим форму добавления сепулек

=cut

sub add :Chained('list') :PathPart('add') :Args(0) {
    my ( $self, $c ) = @_;

    #$c->stash(template => 'sepulkas/add.tt2');
    
    $c->response->body($c->stash->{'Hello World'});
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
