use utf8;
package PhoenixDB::ResultSet::Article;
use strict;
use warnings;

use DateTime;

use base 'DBIx::Class::ResultSet';

=head2 published

filter out unpublishable articles

=cut

sub published {
    my $self = shift;

    return $self->search({
        'published'        => 1,
        'publication_date' => {'<',DateTime->now('time_zone' => 'Europe/London', 'locale' => 'en_GB')},
    });
}

1;