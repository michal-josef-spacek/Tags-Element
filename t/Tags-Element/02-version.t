use strict;
use warnings;

use Tags::Element;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Tags::Element::VERSION, 0.05, 'Version.');
