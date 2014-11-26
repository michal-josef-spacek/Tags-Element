# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract "Element utilities for 'Tags'.";
author 'Michal Spacek <skim@cpan.org>';
license 'bsd';
name 'Tags-Element';
readme_from 'Element.pm';
requires 'Exporter' => 0;
requires 'Readonly' => 0;
requires 'perl' => '5.8.0';
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Tags-Element';
resources 'homepage' => 'https://github.com/tupinek/Tags-Element';
resources 'repository' => 'git://github.com/tupinek/Tags-Element';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
