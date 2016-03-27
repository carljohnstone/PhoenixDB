use utf8;
package PhoenixDB::Result::LeagueTablesData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::LeagueTablesData

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

=head1 TABLE: C<league_tables_data>

=cut

__PACKAGE__->table("league_tables_data");

=head1 ACCESSORS

=head2 league

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 10

=head2 position

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 team

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 45

=head2 played

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 won

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 otwon

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 drawn

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 otlost

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 lost

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 goalsfor

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 goalsagainst

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 points

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "league",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 10 },
  "position",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 0 },
  "team",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 45 },
  "played",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "won",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "otwon",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "drawn",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "otlost",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "lost",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "goalsfor",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "goalsagainst",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "points",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</league>

=item * L</position>

=back

=cut

__PACKAGE__->set_primary_key("league", "position");

=head1 RELATIONS

=head2 league

Type: belongs_to

Related object: L<PhoenixDB::Result::LeagueTable>

=cut

__PACKAGE__->belongs_to(
  "league",
  "PhoenixDB::Result::LeagueTable",
  { league => "league" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:J5lWlDtidIZ16YLv0qkm8Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
