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

=head2 base

Базовый Chained метод

=cut

sub base :Chained('/') :PathPart('sepulkas') :CaptureArgs(0) {
    my ( $self, $c ) = @_;

    $c->stash(resultset => $c->model('DB::Sepulka'));
}

=head2 list

Выводим список сепулек.

=cut

sub list :Chained('base') :PathPart('list') :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash(sepulkas => [$c->stash->{resultset}->all]);

    $c->stash(template => 'sepulkas/list.tt2');
}

=head2 add

Выводим форму добавления сепулек

=cut

sub add :Chained('base') :PathPart('add') :Args(0) {
    my ( $self, $c ) = @_;
    
    $c->stash(sepulkariums => [$c->model('DB::Sepulkarium')->all]);

    $c->stash(template => 'sepulkas/add.tt2');
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
