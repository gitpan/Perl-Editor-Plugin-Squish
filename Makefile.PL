use inc::Module::Install;

name          ( 'Perl-Editor-Plugin-Squish'        );
abstract      ( 'A Perl::Editor plugin for Perl::Squish' );
author        ( 'Adam Kennedy <cpan@ali.as>'       );
version_from  ( 'lib/Perl/Editor/Plugin/Squish.pm' );
license       ( 'perl'                             );
requires      ( 'perl'                  => '5.005' );
requires      ( 'Perl::Squish'          => '0.02'  );
build_requires( 'Test::More'            => '0.47'  );
build_requires( 'File::Spec'            => '0.80'  );

auto_install();

&WriteAll;
