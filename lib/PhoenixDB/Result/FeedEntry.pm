use utf8;
package PhoenixDB::Result::FeedEntry;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::FeedEntry

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<feed_entry>

=cut

__PACKAGE__->table("feed_entry");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 feed

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 pubdate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "url",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "feed",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "title",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "pubdate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
    locale => "en_GB",
    timezone => "Europe/London",
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<url>

=over 4

=item * L</url>

=back

=cut

__PACKAGE__->add_unique_constraint("url", ["url"]);

=head1 RELATIONS

=head2 feed

Type: belongs_to

Related object: L<PhoenixDB::Result::Rssfeed>

=cut

__PACKAGE__->belongs_to(
  "feed",
  "PhoenixDB::Result::Rssfeed",
  { id => "feed" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:27
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Bu/0biS7PdumI5fmF4WOaw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
