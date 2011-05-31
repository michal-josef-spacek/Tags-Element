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
	my ($element, @tags) = @_;
	my @attr;
	my @content;
	foreach my $ref (@tags) {
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

=item B<element()>

TODO

=back

=head1 ERRORS

 No errors.

=head1 EXAMPLE

TODO

=head1 DEPENDENCIES

None.

=head1 SEE ALSO

L<Tags(3pm)>.

=head1 AUTHOR

Michal Špaček L<skim@cpan.org>

=head1 LICENSE

BSD license.

=head1 VERSION

0.01

=cut
