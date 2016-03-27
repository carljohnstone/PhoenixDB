use utf8;
package PhoenixDB::Result::PlayerstatOut;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::PlayerstatOut

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

=head1 TABLE: C<playerstats_out>

=cut

__PACKAGE__->table("playerstats_out");

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

  data_type: 'smallint'
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

=head2 goals

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 assists

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 pims

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

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
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "season",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "team",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "league",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "games",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "goals",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "assists",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "pims",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:boK0sZn8tEILw173YWGQNg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
