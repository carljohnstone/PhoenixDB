use utf8;
package PhoenixDB::Result::PressboxVideo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::PressboxVideo

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

=head1 TABLE: C<pressbox_video>

=cut

__PACKAGE__->table("pressbox_video");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 fixture

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 label

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 size_in_mb

  data_type: 'tinyint'
  is_nullable: 1

=head2 url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "fixture",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "label",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "size_in_mb",
  { data_type => "tinyint", is_nullable => 1 },
  "url",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 fixture

Type: belongs_to

Related object: L<PhoenixDB::Result::Pressbox>

=cut

__PACKAGE__->belongs_to(
  "fixture",
  "PhoenixDB::Result::Pressbox",
  { fixture => "fixture" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Eth42wDzuN/e6XMqSI4i5Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
