package Tags::Element;

# Pragmas.
use base qw(Exporter);
use strict;
use warnings;

# Modules.
use Readonly;

# Constants.
Readonly::Array our @EXPORT_OK => qw(element);

# Version.
our $VERSION = 0.01;

# Common element.
sub element {
	my ($element, @data) = @_;
	my @attr;
	my @content;
	foreach my $ref (@data) {
		if (ref $ref eq 'HASH') {
			foreach my $key (sort keys %{$ref}) {
				push @attr, ['a', $key, $ref->{$key}];
			}
		} elsif (ref $ref eq 'ARRAY') {
			push @content, @{$ref};
		} else {
			push @content, ['d', $ref];
		}
	}
	return (
		['b', $element],
		@attr ? @attr : (),
		@content ? @content : (),
		['e', $element],
	);
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

Tags::Element - Element utilities for 'Tags'.

=head1 SYNOPSIS

TODO

=head1 DESCRIPTION

TODO

=head1 SUBROUTINES

=over 8

=item C<element()>

TODO

=back

=head1 EXAMPLE

TODO

=head1 DEPENDENCIES

L<Exporter>,
L<Readonly>.

=head1 SEE ALSO

L<Tags>.

=head1 AUTHOR

Michal Špaček L<skim@cpan.org>

=head1 LICENSE AND COPYRIGHT

 © Michal Špaček 2011-2014
 BSD 2-Clause License

=head1 VERSION

0.01

=cut
