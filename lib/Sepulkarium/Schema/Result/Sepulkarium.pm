use utf8;
package Sepulkarium::Schema::Result::Sepulkarium;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Sepulkarium::Schema::Result::Sepulkarium

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

=head1 TABLE: C<sepulkarium>

=cut

__PACKAGE__->table("sepulkarium");

=head1 ACCESSORS

=head2 sepulkarium_id

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "sepulkarium_id",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</sepulkarium_id>

=back

=cut

__PACKAGE__->set_primary_key("sepulkarium_id");

=head1 RELATIONS

=head2 sepulkas

Type: has_many

Related object: L<Sepulkarium::Schema::Result::Sepulka>

=cut

__PACKAGE__->has_many(
  "sepulkas",
  "Sepulkarium::Schema::Result::Sepulka",
  { "foreign.sepulkarium_id" => "self.sepulkarium_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2016-01-22 10:59:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TK2NtD1OKF9quqoKA1bMEg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
