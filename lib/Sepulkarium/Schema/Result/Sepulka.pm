use utf8;
package Sepulkarium::Schema::Result::Sepulka;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sepulkarium::Schema::Result::Sepulka

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<sepulka>

=cut

__PACKAGE__->table("sepulka");

=head1 ACCESSORS

=head2 sepulka_id

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 1

=head2 size

  data_type: 'text'
  is_nullable: 1

=head2 colour

  data_type: 'text'
  is_nullable: 1

=head2 sepulkarium_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "sepulka_id",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 1 },
  "size",
  { data_type => "text", is_nullable => 1 },
  "colour",
  { data_type => "text", is_nullable => 1 },
  "sepulkarium_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</sepulka_id>

=back

=cut

__PACKAGE__->set_primary_key("sepulka_id");

=head1 RELATIONS

=head2 sepulkarium

Type: belongs_to

Related object: L<Sepulkarium::Schema::Result::Sepulkarium>

=cut

__PACKAGE__->belongs_to(
  "sepulkarium",
  "Sepulkarium::Schema::Result::Sepulkarium",
  { sepulkarium_id => "sepulkarium_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2016-01-22 10:59:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2pl4ko2VCShx7w3XgQyk+g

sub sepulkarium_name {
my ($self) = @_;
return $self->sepulkarium->name;
}

# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
