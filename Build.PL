use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Data::Dumper::AutoEncode',
    license             => 'perl',
    dist_author         => 'Dai Okabayashi <bayashi@cpan.org>',
    dist_version_from   => 'lib/Data/Dumper/AutoEncode.pm',
    build_requires      => {
        'Test::More' => 0.88,
        'Encode' => 0,
    },
    requires => {
        'parent' => 0,
        'Data::Dumper' => 0,
        'Data::Recursive::Encode' => 0,
        'Exporter' => 0,
    },
    add_to_cleanup      => [ 'Data-Dumper-AutoEncode-*' ],
    meta_merge     => {
      resources => {
        repository  => 'http://github.com/bayashi/Data-Dumper-AutoEncode'
      }
    },
);

$builder->create_build_script();
