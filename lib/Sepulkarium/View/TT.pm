package Sepulkarium::View::TT;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt2',
    render_die => 1,
    CATALYST_VAR => 'c',
    ENCODING => 'utf-8',
);

=head1 NAME

Sepulkarium::View::TT - TT View for Sepulkarium

=head1 DESCRIPTION

TT View for Sepulkarium.

=head1 SEE ALSO

L<Sepulkarium>

=head1 AUTHOR

eraser,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
