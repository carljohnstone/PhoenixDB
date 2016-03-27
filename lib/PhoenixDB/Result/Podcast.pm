use utf8;
package PhoenixDB::Result::Podcast;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::Podcast

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

=head1 TABLE: C<podcast>

=cut

__PACKAGE__->table("podcast");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  is_nullable: 0
  size: 256

=head2 date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

=head2 text

  data_type: 'text'
  is_nullable: 1

=head2 audio_url

  data_type: 'varchar'
  is_nullable: 1
  size: 512

=head2 filename

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 filesize

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 published

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 last_modified

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "title",
  { data_type => "varchar", is_nullable => 0, size => 256 },
  "date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
    locale => "en_GB",
    timezone => "Europe/London",
  },
  "text",
  { data_type => "text", is_nullable => 1 },
  "audio_url",
  { data_type => "varchar", is_nullable => 1, size => 512 },
  "filename",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "filesize",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "published",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "last_modified",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
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

=head1 RELATIONS

=head2 podcast_mp3

Type: might_have

Related object: L<PhoenixDB::Result::PodcastMp3>

=cut

__PACKAGE__->might_have(
  "podcast_mp3",
  "PhoenixDB::Result::PodcastMp3",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+ED/EwdaqcTdDzpwc5j1Yg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
