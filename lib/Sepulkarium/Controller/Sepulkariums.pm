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

=head2 base

Базовый Chained метод

=cut

sub base :Chained('/') :PathPart('sepulkariums') :CaptureArgs(0) {
    my ( $self, $c ) = @_;

    $c->stash(sepulkariums_resultset => $c->model('DB::Sepulkarium'));
}


=head2 list

Вывод списка сепулькариев.

=cut

sub list :Chained('base') :PathPart('list') :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash(sepulkariums => [$c->stash->{sepulkariums_resultset}->all]);

    $c->stash(template => 'sepulkariums/list.tt2');
}


=head2 add

Добавление сепулькария.

=cut

sub add :Chained('base') :PathPart('add') :Args(0) {
    my ( $self, $c ) = @_;

    if ($c->req->method eq 'POST') {
        my $name = $c->request->params->{name};
        
        my $sepulka = $c->stash->{sepulkariums_resultset}->create({
                    name   => $name,
                });

        $c->res->redirect($c->uri_for('list'));
    }

    $c->stash(template => 'sepulkariums/add.tt2');
}


=head2 object

Выбор сепулькария для удаления или редактирования

=cut

sub object :Chained('base') :PathPart('id') :CaptureArgs(1) {
    my ($self, $c, $sepulkarium_id) = @_;

    $c->stash(sepulkarium => $c->stash->{sepulkariums_resultset}->find($sepulkarium_id));
}


=head2 remove

Удаление сепулькария

=cut

sub remove :Chained('object') :PathPart('remove') :Args(0) {
    my ($self, $c) = @_;

    $c->stash->{sepulkarium}->delete;

    $c->response->redirect($c->uri_for($self->action_for('list')));
}


=head2 edit

Редактирование сепулькария

=cut

sub edit :Chained('object') :PathPart('edit') :Args(0) {
    my ($self, $c) = @_;

    if ($c->req->method eq 'POST') {
        my $sepulkarium_id = $c->request->params->{sepulkarium_id};
        my $name = $c->request->params->{name};

        $c->stash->{sepulkariums_resultset}->find({sepulkarium_id => $sepulkarium_id})->update({
                    sepulkarium_id => $sepulkarium_id,
                    name   => $name || undef,
                });

        $c->res->redirect($c->uri_for('list'));
    }

    $c->stash(template => 'sepulkariums/edit.tt2') ;
}

=head2

End method

=cut

sub end : ActionClass('RenderView') {}


=encoding utf8

=head1 AUTHOR

Vladimir V. Predekha

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
