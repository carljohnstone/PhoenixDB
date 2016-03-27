use utf8;
package PhoenixDB::Result::Pressbox;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::Pressbox

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

=head1 TABLE: C<pressbox>

=cut

__PACKAGE__->table("pressbox");

=head1 ACCESSORS

=head2 fixture

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 match_summary

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 match_report

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "fixture",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "match_summary",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "match_report",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</fixture>

=back

=cut

__PACKAGE__->set_primary_key("fixture");

=head1 RELATIONS

=head2 fixture

Type: belongs_to

Related object: L<PhoenixDB::Result::Fixture>

=cut

__PACKAGE__->belongs_to(
  "fixture",
  "PhoenixDB::Result::Fixture",
  { id => "fixture" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 pressbox_audios

Type: has_many

Related object: L<PhoenixDB::Result::PressboxAudio>

=cut

__PACKAGE__->has_many(
  "pressbox_audios",
  "PhoenixDB::Result::PressboxAudio",
  { "foreign.fixture" => "self.fixture" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pressbox_images

Type: has_many

Related object: L<PhoenixDB::Result::PressboxImage>

=cut

__PACKAGE__->has_many(
  "pressbox_images",
  "PhoenixDB::Result::PressboxImage",
  { "foreign.fixture" => "self.fixture" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 pressbox_videos

Type: has_many

Related object: L<PhoenixDB::Result::PressboxVideo>

=cut

__PACKAGE__->has_many(
  "pressbox_videos",
  "PhoenixDB::Result::PressboxVideo",
  { "foreign.fixture" => "self.fixture" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nDYFnuYJfQucL5HUK5Ht5g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
