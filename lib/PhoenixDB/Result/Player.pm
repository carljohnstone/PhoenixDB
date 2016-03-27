use utf8;
package PhoenixDB::Result::Player;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::Player

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

=head1 TABLE: C<players>

=cut

__PACKAGE__->table("players");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 firstname

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 lastname

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 hide_lastname

  data_type: 'tinyint'
  is_nullable: 0

=head2 profilepic

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 position

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 dob

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

=head2 hometown

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 weight

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 height

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 handed

  data_type: 'varchar'
  is_nullable: 1
  size: 5

=head2 signed

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

=head2 lastgameplayed

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

=head2 text

  data_type: 'text'
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
  "firstname",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "lastname",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "hide_lastname",
  { data_type => "tinyint", is_nullable => 0 },
  "profilepic",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "position",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "dob",
  {
    data_type => "date",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
    locale => "en_GB",
    timezone => "Europe/London",
  },
  "hometown",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "weight",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "height",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "handed",
  { data_type => "varchar", is_nullable => 1, size => 5 },
  "signed",
  {
    data_type => "date",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
    locale => "en_GB",
    timezone => "Europe/London",
  },
  "lastgameplayed",
  {
    data_type => "date",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
    locale => "en_GB",
    timezone => "Europe/London",
  },
  "text",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 article_players

Type: has_many

Related object: L<PhoenixDB::Result::ArticlePlayer>

=cut

__PACKAGE__->has_many(
  "article_players",
  "PhoenixDB::Result::ArticlePlayer",
  { "foreign.related_player" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fan_sponsorships

Type: has_many

Related object: L<PhoenixDB::Result::FanSponsorship>

=cut

__PACKAGE__->has_many(
  "fan_sponsorships",
  "PhoenixDB::Result::FanSponsorship",
  { "foreign.player" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 player_adoption

Type: might_have

Related object: L<PhoenixDB::Result::PlayerAdoption>

=cut

__PACKAGE__->might_have(
  "player_adoption",
  "PhoenixDB::Result::PlayerAdoption",
  { "foreign.id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 playerstats_goalnats

Type: has_many

Related object: L<PhoenixDB::Result::PlayerstatsGoalnat>

=cut

__PACKAGE__->has_many(
  "playerstats_goalnats",
  "PhoenixDB::Result::PlayerstatsGoalnat",
  { "foreign.player" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 playerstats_goals

Type: has_many

Related object: L<PhoenixDB::Result::PlayerstatsGoal>

=cut

__PACKAGE__->has_many(
  "playerstats_goals",
  "PhoenixDB::Result::PlayerstatsGoal",
  { "foreign.player" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 playerstats_out

Type: has_many

Related object: L<PhoenixDB::Result::PlayerstatOut>

=cut

__PACKAGE__->has_many(
  "playerstats_out",
  "PhoenixDB::Result::PlayerstatOut",
  { "foreign.player" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 playerstats_outnats

Type: has_many

Related object: L<PhoenixDB::Result::PlayerstatsOutnat>

=cut

__PACKAGE__->has_many(
  "playerstats_outnats",
  "PhoenixDB::Result::PlayerstatsOutnat",
  { "foreign.player" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 profilepic

Type: belongs_to

Related object: L<PhoenixDB::Result::Image>

=cut

__PACKAGE__->belongs_to(
  "profilepic",
  "PhoenixDB::Result::Image",
  { id => "profilepic" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 roster_players

Type: has_many

Related object: L<PhoenixDB::Result::RosterPlayer>

=cut

__PACKAGE__->has_many(
  "roster_players",
  "PhoenixDB::Result::RosterPlayer",
  { "foreign.player" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ggCrMFGY13ZqIvTdGs0sbw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
