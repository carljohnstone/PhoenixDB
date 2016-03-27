use utf8;
package PhoenixDB::Result::RosterPlayer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::RosterPlayer

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

=head1 TABLE: C<roster_players>

=cut

__PACKAGE__->table("roster_players");

=head1 ACCESSORS

=head2 roster

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 player

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 shirt_number

  data_type: 'tinyint'
  is_nullable: 1

=head2 position

  data_type: 'enum'
  extra: {list => ["netminder","defender","forward"]}
  is_nullable: 1

=head2 left_team

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 image

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "roster",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "player",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "shirt_number",
  { data_type => "tinyint", is_nullable => 1 },
  "position",
  {
    data_type => "enum",
    extra => { list => ["netminder", "defender", "forward"] },
    is_nullable => 1,
  },
  "left_team",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "image",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</roster>

=item * L</player>

=back

=cut

__PACKAGE__->set_primary_key("roster", "player");

=head1 RELATIONS

=head2 image

Type: belongs_to

Related object: L<PhoenixDB::Result::Image>

=cut

__PACKAGE__->belongs_to(
  "image",
  "PhoenixDB::Result::Image",
  { id => "image" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 player

Type: belongs_to

Related object: L<PhoenixDB::Result::Player>

=cut

__PACKAGE__->belongs_to(
  "player",
  "PhoenixDB::Result::Player",
  { id => "player" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 roster

Type: belongs_to

Related object: L<PhoenixDB::Result::Roster>

=cut

__PACKAGE__->belongs_to(
  "roster",
  "PhoenixDB::Result::Roster",
  { id => "roster" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:A4ueaGFTn8PhZ+7nbuH3aw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
