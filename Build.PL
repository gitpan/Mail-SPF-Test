#
# Module::Build build script for Mail::SPF::Test
#
# (C) 2006 Julian Mehnle <julian@mehnle.net>
# $Id$
#
##############################################################################

use Module::Build 0.26;
use version;

my $build = Module::Build->new(
    module_name     => 'Mail::SPF::Test',
    dist_author     => 'Julian Mehnle <julian@mehnle.net>',
    license         => 'bsd',
    requires        => {
        # Core requirements:
        perl            => '5.006',
        version         => 0,
        NetAddr::IP     => '4',
        Net::DNS        => '0.58',
        YAML            => 0
    },
    recommends      => {
    },
    build_requires  => {
        # Build requirements:
        Module::Build   => '0.26',
        #Test::More      => 0
    },
    create_makefile_pl
                    => 'passthrough',
    sign            => 1
);

$build->create_build_script();
