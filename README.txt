ppmi - a Pure Perl module installer

If you want to start using Git on windows, Git for windows( https://gitforwindows.org/ ) is the best solution.

Git for windows contains Perl by default. It means developers' windows machines with git installed are also perl machines !!!
I think bloated utilites can be replaced by a few lines of perl code or perl one-liner thanks to powerful string-manipulation and system functions.
It can be the new entry point to attract developers to Perl again.

But unfortunately it doesn't include all perl core modules and make binary, so we can't bootstrap perl module installer like cpan or cpanm. :(

This is a tricky way to install pure perl modules under the current directory.
(Extracting a module tarball's lib directory to under ./perl_modules. it is not perfect, but it works with many pure perl CPAN modules.)
and add the directory to perl's library search path with "use lib 'perl_modules/lib';".

SYNOPSIS

# Install Text::CSV

$ ./ppmi Text::CSV
$ perl -Mlib=perl_modules/lib -e 'use Text::CSV'
$ perl -e 'use lib qw{perl_modules/lib}; use Text::CSV'


# Install Mojolicious

$ ./install-mojolicious.sh
$ perl mojo-test.pl
