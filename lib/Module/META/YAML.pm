package Module::META::YAML;
use strict;
use vars qw[$VERSION];
$VERSION = '0.01';

use YAML qw[LoadFile];
use base qw[Module::META];

sub read {
    my ($class, $file) = @_;
    my $load = LoadFile($file);
    $load->{meta_spec} = delete $load->{'meta-spec'};
    return $class->new(%{$load});
}

__END__

=head1 NAME

Module::META - Generic Representation of META.yml 1.0 Spec

=head1 SYNOPSIS

  use Module::META;

  my $meta = Module::META->new(
      name           => 'Module-Name',
      build_requires => {
          'Test::More' => '0.46',
      },
  );
  $meta->abstract("Module with a Name");

=head1 SEE ALSO

Reference document, L<http://module-build.sourceforge.net/META-spec-new.html>.

=cut
