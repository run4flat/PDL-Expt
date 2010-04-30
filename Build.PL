use strict;
use warnings;
use Module::Build::PDL;

my $builder = Module::Build->new(
    module_name         => 'PDL::Expt',
    license             => 'perl',
    dist_author         => q{David Mertens <dcmertens.perl@gmail.com>},
    dist_version_from   => 'lib/PDL/Expt.pm',
    build_requires => {
        'Test::More' => 0,
        'Module::Build::PDL' => 0,
    },
    requires => {
    	PDL => 0,
    },
    add_to_cleanup      => [ 'PDL-Expt-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
