use utf8;
package PhoenixDB::Result::PlayerstatsGoalnat;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::PlayerstatsGoalnat

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

=head1 TABLE: C<playerstats_goalnat>

=cut

__PACKAGE__->table("playerstats_goalnat");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 player

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 order

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 season

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 team

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 league

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 games

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 mins

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 shots

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 gc

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 shutouts

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 gaa

  data_type: 'decimal'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [4,2]

=head2 save

  data_type: 'decimal'
  extra: {unsigned => 1}
  is_nullable: 1
  size: [4,3]

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "player",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "order",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 1 },
  "season",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "team",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "league",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "games",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "mins",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "shots",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "gc",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "shutouts",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "gaa",
  {
    data_type => "decimal",
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [4, 2],
  },
  "save",
  {
    data_type => "decimal",
    extra => { unsigned => 1 },
    is_nullable => 1,
    size => [4, 3],
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 player

Type: belongs_to

Related object: L<PhoenixDB::Result::Player>

=cut

__PACKAGE__->belongs_to(
  "player",
  "PhoenixDB::Result::Player",
  { id => "player" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:syFALh9Ahn3OiT1z7yU5Rw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
