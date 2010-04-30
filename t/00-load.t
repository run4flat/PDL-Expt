#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'PDL::Expt' );
}

diag( "Testing PDL::Expt $PDL::Expt::VERSION, Perl $], $^X" );
