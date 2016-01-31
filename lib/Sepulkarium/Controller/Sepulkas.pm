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

    $c->stash(sepulkas_resultset => $c->model('DB::Sepulka'));
    $c->stash(sepulkariums_resultset => $c->model('DB::Sepulkarium'));
}


=head2 list

Вывод списка сепулек.

=cut

sub list :Chained('base') :PathPart('list') :Args(0) {
    my ( $self, $c ) = @_;

    $c->stash(sepulkas => [$c->stash->{sepulkas_resultset}->all]);

    $c->stash(template => 'sepulkas/list.tt2');
}


=head2 add

Добавление сепульки

=cut

sub add :Chained('base') :PathPart('add') :Args(0) {
    my ( $self, $c ) = @_;
    
    if ($c->req->method eq 'POST') {
        my $name = $c->request->params->{name};
        my $size = $c->request->params->{size};
        my $colour = $c->request->params->{colour};
        my $sepulkarium_id = $c->request->params->{sepulkarium_id};

        my $sepulka = $c->stash->{sepulkas_resultset}->create({
                    name   => $name,
                    size  => $size,
                    colour  => $colour,
                    sepulkarium_id => $sepulkarium_id,
                });
    
        $c->res->redirect($c->uri_for('list'));
    }
    $c->stash(sepulkariums => [$c->stash->{sepulkariums_resultset}->all]);

    $c->stash(template => 'sepulkas/add.tt2');
}


=head2 object

Выбор сепульки для удаления или редактирования

=cut

sub object :Chained('base') :PathPart('id') :CaptureArgs(1) {
    my ($self, $c, $sepulka_id) = @_;
    
    $c->stash(sepulka => $c->stash->{sepulkas_resultset}->find($sepulka_id));
}


=head2 remove

Удаление сепульки

=cut

sub remove :Chained('object') :PathPart('remove') :Args(0) {
    my ($self, $c) = @_;

    $c->stash->{sepulka}->delete;

    $c->response->redirect($c->uri_for($self->action_for('list')));
}


=head2 edit

Редактирование сепульки

=cut

sub edit :Chained('object') :PathPart('edit') :Args(0) {
    my ($self, $c) = @_;
    
    if ($c->req->method eq 'POST') {
        my $sepulka_id = $c->request->params->{sepulka_id};
        my $name = $c->request->params->{name};
        my $size = $c->request->params->{size};
        my $colour = $c->request->params->{colour};
        my $sepulkarium_id = $c->request->params->{sepulkarium_id};

        my $sepulka = $c->stash->{sepulkas_resultset}->find({sepulka_id => $sepulka_id})->update({
                    name   => $name || undef,
                    size  => $size || undef,
                    colour  => $colour || undef,
                    sepulkarium_id => $sepulkarium_id,
                });

        $c->res->redirect($c->uri_for('list'));
    }
    
    $c->stash(sepulkariums => [$c->stash->{sepulkariums_resultset}->all]);

    $c->stash(template => 'sepulkas/edit.tt2') ;
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
