use utf8;
package PhoenixDB::Result::Image;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::Image

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

=head1 TABLE: C<images>

=cut

__PACKAGE__->table("images");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 category

  data_type: 'varchar'
  is_nullable: 1
  size: 25

=head2 date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 alt

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 caption

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 width

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 height

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 size

  data_type: 'integer'
  is_nullable: 1

=head2 mimetype

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=head2 credit

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 fixture

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 modified_date

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0
  locale: 'en_GB'
  timezone: 'Europe/London'

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "category",
  { data_type => "varchar", is_nullable => 1, size => 25 },
  "date",
  {
    data_type => "date",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
    locale => "en_GB",
    timezone => "Europe/London",
  },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "alt",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "caption",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "width",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "height",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "size",
  { data_type => "integer", is_nullable => 1 },
  "mimetype",
  { data_type => "varchar", is_nullable => 1, size => 45 },
  "credit",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "fixture",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "modified_date",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
    locale => "en_GB",
    timezone => "Europe/London",
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 article_images

Type: has_many

Related object: L<PhoenixDB::Result::ArticleImage>

=cut

__PACKAGE__->has_many(
  "article_images",
  "PhoenixDB::Result::ArticleImage",
  { "foreign.related_image" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 auction_items

Type: has_many

Related object: L<PhoenixDB::Result::AuctionItem>

=cut

__PACKAGE__->has_many(
  "auction_items",
  "PhoenixDB::Result::AuctionItem",
  { "foreign.image" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 fixture

Type: belongs_to

Related object: L<PhoenixDB::Result::Fixture>

=cut

__PACKAGE__->belongs_to(
  "fixture",
  "PhoenixDB::Result::Fixture",
  { id => "fixture" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 image_data

Type: might_have

Related object: L<PhoenixDB::Result::ImageData>

=cut

__PACKAGE__->might_have(
  "image_data",
  "PhoenixDB::Result::ImageData",
  { "foreign.image" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 partners

Type: has_many

Related object: L<PhoenixDB::Result::Partner>

=cut

__PACKAGE__->has_many(
  "partners",
  "PhoenixDB::Result::Partner",
  { "foreign.logo" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 players

Type: has_many

Related object: L<PhoenixDB::Result::Player>

=cut

__PACKAGE__->has_many(
  "players",
  "PhoenixDB::Result::Player",
  { "foreign.profilepic" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 promos

Type: has_many

Related object: L<PhoenixDB::Result::Promo>

=cut

__PACKAGE__->has_many(
  "promos",
  "PhoenixDB::Result::Promo",
  { "foreign.image" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 roster_coaches

Type: has_many

Related object: L<PhoenixDB::Result::RosterCoach>

=cut

__PACKAGE__->has_many(
  "roster_coaches",
  "PhoenixDB::Result::RosterCoach",
  { "foreign.image" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 roster_players

Type: has_many

Related object: L<PhoenixDB::Result::RosterPlayer>

=cut

__PACKAGE__->has_many(
  "roster_players",
  "PhoenixDB::Result::RosterPlayer",
  { "foreign.image" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 rosters

Type: has_many

Related object: L<PhoenixDB::Result::Roster>

=cut

__PACKAGE__->has_many(
  "rosters",
  "PhoenixDB::Result::Roster",
  { "foreign.team_photo" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 teams

Type: has_many

Related object: L<PhoenixDB::Result::Team>

=cut

__PACKAGE__->has_many(
  "teams",
  "PhoenixDB::Result::Team",
  { "foreign.logo" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rNd+XzxmRlKbB5roctJcWw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
