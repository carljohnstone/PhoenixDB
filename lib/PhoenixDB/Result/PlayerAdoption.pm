use utf8;
package PhoenixDB::Result::PlayerAdoption;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::PlayerAdoption

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

=head1 TABLE: C<player_adoptions>

=cut

__PACKAGE__->table("player_adoptions");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 home

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 home_url

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 away

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 away_url

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 unavailable

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "home",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "home_url",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "away",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "away_url",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "unavailable",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 id

Type: belongs_to

Related object: L<PhoenixDB::Result::Player>

=cut

__PACKAGE__->belongs_to(
  "id",
  "PhoenixDB::Result::Player",
  { id => "id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:j6Qs/nVBtxN2ruDzM4l5vQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
