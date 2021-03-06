package Sepulkarium::Model::DB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'Sepulkarium::Schema',
    
    connect_info => {
        dsn => 'dbi:mysql:sepulkariumdb',
        user => 'sepulator',
        password => '',
        AutoCommit => q{1},
        mysql_enable_utf8 => 1,
    }
);

=head1 NAME

Sepulkarium::Model::DB - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<Sepulkarium>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<Sepulkarium::Schema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.65

=head1 AUTHOR

eraser

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
