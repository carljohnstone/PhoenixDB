use utf8;
package PhoenixDB::Result::Roster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::Roster

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

=head1 TABLE: C<rosters>

=cut

__PACKAGE__->table("rosters");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 season

  data_type: 'smallint'
  is_nullable: 0

=head2 order

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 team

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 team_photo

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
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
  "season",
  { data_type => "smallint", is_nullable => 0 },
  "order",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 0 },
  "team",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "team_photo",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 roster_coaches

Type: has_many

Related object: L<PhoenixDB::Result::RosterCoach>

=cut

__PACKAGE__->has_many(
  "roster_coaches",
  "PhoenixDB::Result::RosterCoach",
  { "foreign.roster" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 roster_players

Type: has_many

Related object: L<PhoenixDB::Result::RosterPlayer>

=cut

__PACKAGE__->has_many(
  "roster_players",
  "PhoenixDB::Result::RosterPlayer",
  { "foreign.roster" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 team_photo

Type: belongs_to

Related object: L<PhoenixDB::Result::Image>

=cut

__PACKAGE__->belongs_to(
  "team_photo",
  "PhoenixDB::Result::Image",
  { id => "team_photo" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PITSoVD45TPojXjmG/X6Rg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
