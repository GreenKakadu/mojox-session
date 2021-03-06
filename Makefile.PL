use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'MojoX::Session',
    AUTHOR        => 'Viacheslav Tykhanovskyi <vti@cpan.org>',
    VERSION_FROM  => 'lib/MojoX/Session.pm',
    ABSTRACT_FROM => 'lib/MojoX/Session.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
        ? ('LICENSE' => 'perl')
        : ()),
    PL_FILES  => {},
    PREREQ_PM => {
        'Test::More'   => 0,
        'Mojo'         => '0.999914',
        'Storable'     => 0,
        'MIME::Base64' => 0,
        'Digest::SHA1' => 0
    },
    dist  => {COMPRESS => 'gzip -9f', SUFFIX => 'gz'},
    clean => {FILES    => 'MojoX-Session-*'},
    test  => {TESTS    => 't/*.t t/*/*.t'}
);
