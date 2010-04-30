package PDL::Expt;

use warnings;
use strict;

# Insert code here to include all the subdirectories.
sub PDL::import {

my $pkg = (caller())[0];
eval <<"EOD";

package $pkg;

# Load the fundamental packages

use PDL::Core;
use PDL::Ops;
use PDL::Primitive;
use PDL::Ufunc;
use PDL::Basic;
use PDL::Slices;
use PDL::Bad;
use PDL::Math;
use PDL::MatrixOps;
use PDL::Lvalue;

# Load these for TPJ compatibility

use PDL::IO::Misc;          # Misc IO (Ascii)
use PDL::IO::FITS;          # FITS IO (rfits/wfits; used by rpic/wpic too)
use PDL::IO::Pic;           # rpic/wpic

EOD

die $@ if $@;

}

=head1 NAME

PDL::Expt - The Experimental Sandbox for PDL

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 WHERE TO START

You're examining the documentation for PDL::Expt. You could have many
reasons for being here, so this section of the documentation will
hopefully help you find the information you seek as quickly as possible.

For basic usage of PDL::Expt, continue reading this documentation.

For an explanation of the philosophy behind PDL::Expt, see
L<PDL::Expt::Philosophy>.

For a guide to contributing code to PDL::Expt, see
L<PDL::Expt::Contributing>.

=head1 SYNOPSIS

The best way to use modules from PDL::Expt is to include them directly
by name, as in

 use PDL::Expt::author::module;

However, you may use many modules by the same author or you may always
forget which module contains the function you need. In that case, you
can include just the author, and all of that author's modules will be
included:

 use PDL::Expt::author;

The easiest method (but most likely to break or give trouble) is to
simply include all the modules in the experimental distribution like so:

 use PDL::Expt;

=head1 WARNING

PDL::Expt is by definition experimental! Therefore, you should expect
function and module names to change or even disappear without warning.
Hopefully, all such changes will be documented, but you never know!

=head1 MAINTAINER

David Mertens, C<< <dcmertens.perl at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-pdl-expt at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=PDL-Expt>.  I will
be notified, and then you'll automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc PDL::Expt


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=PDL-Expt>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/PDL-Expt>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/PDL-Expt>

=item * Search CPAN

L<http://search.cpan.org/dist/PDL-Expt/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

This distribution copyright 2010 David Mertens.

The copyright to the underlying modules are held by their respective
authors, as indicated in their documentation.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of PDL::Expt
