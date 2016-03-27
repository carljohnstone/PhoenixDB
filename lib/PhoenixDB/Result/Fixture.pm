use utf8;
package PhoenixDB::Result::Fixture;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::Fixture

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

=head1 TABLE: C<fixtures>

=cut

__PACKAGE__->table("fixtures");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 team

  data_type: 'varchar'
  default_value: 'EPL'
  is_nullable: 0
  size: 15

=head2 homeaway

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 opponents

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 1
  size: 45

=head2 date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

=head2 fotime

  data_type: 'time'
  is_nullable: 1

=head2 competition

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 venue

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 phoenixscore

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 opponentscore

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 overtime

  data_type: 'tinyint'
  is_nullable: 1

=head2 penalties

  data_type: 'tinyint'
  is_nullable: 1

=head2 season_ticket

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 notes

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 facebook

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 match_report

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 public

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "team",
  {
    data_type => "varchar",
    default_value => "EPL",
    is_nullable => 0,
    size => 15,
  },
  "homeaway",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "opponents",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 1, size => 45 },
  "date",
  {
    data_type => "date",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
    locale => "en_GB",
    timezone => "Europe/London",
  },
  "fotime",
  { data_type => "time", is_nullable => 1 },
  "competition",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "venue",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "phoenixscore",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 1 },
  "opponentscore",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 1 },
  "overtime",
  { data_type => "tinyint", is_nullable => 1 },
  "penalties",
  { data_type => "tinyint", is_nullable => 1 },
  "season_ticket",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "notes",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "facebook",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 1 },
  "match_report",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "public",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 images

Type: has_many

Related object: L<PhoenixDB::Result::Image>

=cut

__PACKAGE__->has_many(
  "images",
  "PhoenixDB::Result::Image",
  { "foreign.fixture" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 match_report

Type: belongs_to

Related object: L<PhoenixDB::Result::Article>

=cut

__PACKAGE__->belongs_to(
  "match_report",
  "PhoenixDB::Result::Article",
  { id => "match_report" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 opponent

Type: belongs_to

Related object: L<PhoenixDB::Result::Team>

=cut

__PACKAGE__->belongs_to(
  "opponent",
  "PhoenixDB::Result::Team",
  { id => "opponents" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 pressbox

Type: might_have

Related object: L<PhoenixDB::Result::Pressbox>

=cut

__PACKAGE__->might_have(
  "pressbox",
  "PhoenixDB::Result::Pressbox",
  { "foreign.fixture" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fU08gXWADqTDlldVSxFpoA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
