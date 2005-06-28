package Perl::Editor::Plugin::Squish;

=pod

=head1 NAME

Perl::Editor::Plugin::Squish - Perl Editor plugin for Perl::Squish

=head1 DESCRIPTION

This is a simple plugin for the Perl Refactoring Editor API that provides the
ability to "Squish" the current document as described in the perl.com article:

L<http://www.perl.com/pub/a/2005/06/09/ppi.html>

=cut

use strict;
use Perl::Squish ();

use vars qw{$VERSION};
BEGIN {
	$VERSION = '0.01';
}

sub init {
	my $class = shift;
	Perl::Editor->register_action(
		api     => 'PPI::Transform',
		context => 'PPI::Document',
		class   => 'Perl::Squish',
		menu    => [ 'Transform', 'Perl::Squish' ],
		);
}

1;

=pod

=head1 SUPPORT

Bugs should always be submitted via the CPAN bug tracker, located at

L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Perl-Editor-Plugin-Squish>

For general comments, contact the author.

=head1 AUTHOR

Adam Kennedy, L<http://ali.as/>, cpan@ali.as

=head1 SEE ALSO

L<PPI>

=head1 COPYRIGHT

Copyright (c) 2005 Adam Kennedy. All rights reserved.
This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

The full text of the license can be found in the
LICENSE file included with this module.

=cut
