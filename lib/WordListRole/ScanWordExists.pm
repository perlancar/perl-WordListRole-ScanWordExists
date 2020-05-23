package WordListRole::ScanWordExists;

# AUTHORITY
# DATE
# DIST
# VERSION

use Role::Tiny;

requires 'each_word';

sub word_exists {
    my ($self, $word) = @_;

    my $found = 0;
    $self->each_word(
        sub {
            if ($word eq $_[0]) {
                $found = 1;
                return -2;
            }
        }
    );
    $found;
}

1;
# ABSTRACT: The default scanning word_exists()

=for Pod::Coverage .+

=head1 DESCRIPTION

This role packages L<WordList>'s default C<word_exists()>, which uses
C<each_word()> to find a word.
