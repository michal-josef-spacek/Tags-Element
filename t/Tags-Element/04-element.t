# Pragmas.
use strict;
use warnings;

# Modules.
use Tags::Element qw(element);
use Test::More 'tests' => 9;
use Test::NoWarnings;

# Test.
my @ret = element('div');
is_deeply(
	\@ret,
	[
		['b', 'div'],
		['e', 'div'],
	],
);

# Test.
@ret = element('div', {});
is_deeply(
	\@ret,
	[
		['b', 'div'],
		['e', 'div'],
	],
);

# Test.
@ret = element('div', [['b', 'br'], ['e', 'br']]);
is_deeply(
	\@ret,
	[
		['b', 'div'],
		['b', 'br'],
		['e', 'br'],
		['e', 'div'],
	],
);

# Test.
@ret = element('div', {'id' => '_ID_'});
is_deeply(
	\@ret,
	[
		['b', 'div'],
		['a', 'id', '_ID_'],
		['e', 'div'],
	],
);

# Test.
@ret = element('div', {'id' => '_ID_'}, [['b', 'br'], ['e', 'br']]);
is_deeply(
	\@ret,
	[
		['b', 'div'],
		['a', 'id', '_ID_'],
		['b', 'br'],
		['e', 'br'],
		['e', 'div'],
	],
);

# Test.
@ret = element('div', [['b', 'br'], ['e', 'br']], {'id' => '_ID_'});
is_deeply(
	\@ret,
	[
		['b', 'div'],
		['a', 'id', '_ID_'],
		['b', 'br'],
		['e', 'br'],
		['e', 'div'],
	],
);

# Test.
@ret = element('div', 'data');
is_deeply(
	\@ret,
	[
		['b', 'div'],
		['d', 'data'],
		['e', 'div'],
	],
);

# Test.
@ret = element('div', 'data1', 'data2');
is_deeply(
	\@ret,
	[
		['b', 'div'],
		['d', 'data1'],
		['d', 'data2'],
		['e', 'div'],
	],
);
